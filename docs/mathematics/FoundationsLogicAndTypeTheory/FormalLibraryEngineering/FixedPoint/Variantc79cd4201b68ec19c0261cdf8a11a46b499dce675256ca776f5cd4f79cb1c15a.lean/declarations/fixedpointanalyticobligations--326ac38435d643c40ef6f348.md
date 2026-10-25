# FixedPointAnalyticObligations

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0571e53a72fc5c993439656fa97bf8229ea500d5880f1e3544352a331cfd9289",
  "kind": "structure",
  "lexical_name": "FixedPointAnalyticObligations",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "fixedpointanalyticobligations--326ac38435d643c40ef6f348",
  "source": {
    "blob": "6e5a66d6dead2bab70dc5e1529d51565d4904e61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variantc79cd4201b68ec19c0261cdf8a11a46b499dce675256ca776f5cd4f79cb1c15a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:326ac38435d643c40ef6f34824c36db9f072131f439ed8ca31a8d237051b7aa9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variantc79cd4201b68ec19c0261cdf8a11a46b499dce675256ca776f5cd4f79cb1c15a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0571e53a72fc5c993439656fa97bf8229ea500d5880f1e3544352a331cfd9289`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FixedPointAnalyticObligations
    {X : Type}
    (construction : ReflectiveMap X) where
  existenceStatement :
    ∃ point, construction.domain.contains point ∧
      IsFixedPoint construction.apply point
  uniquenessStatement :
    ∀ p q,
      construction.domain.contains p →
      construction.domain.contains q →
      IsFixedPoint construction.apply p →
      IsFixedPoint construction.apply q →
      p = q
  basinStatement : X → Prop
  existenceStatus : ProofDisposition
  uniquenessStatus : ProofDisposition
  basinStatus : ProofDisposition

/-!
This is a theorem from a supplied separation premise, not an assertion that
every registered map has a unique fixed point.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variantc79cd4201b68ec19c0261cdf8a11a46b499dce675256ca776f5cd4f79cb1c15a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variantc79cd4201b68ec19c0261cdf8a11a46b499dce675256ca776f5cd4f79cb1c15a.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e5a66d6dead2bab70dc5e1529d51565d4904e61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
