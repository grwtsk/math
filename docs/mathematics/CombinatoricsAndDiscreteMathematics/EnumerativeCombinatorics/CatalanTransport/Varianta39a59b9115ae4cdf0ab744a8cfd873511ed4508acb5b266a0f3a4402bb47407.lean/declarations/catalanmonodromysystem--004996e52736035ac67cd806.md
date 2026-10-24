# CatalanMonodromySystem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3993ff026a3405e2b4295d33a50fb1ed0e2a9cfe1616af539e73dc932149cd38",
  "kind": "structure",
  "lexical_name": "CatalanMonodromySystem",
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
  "slug": "catalanmonodromysystem--004996e52736035ac67cd806",
  "source": {
    "blob": "274b9f769f4e2edc60b7284f4333cd2636b96e63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 66,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta39a59b9115ae4cdf0ab744a8cfd873511ed4508acb5b266a0f3a4402bb47407.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:004996e52736035ac67cd806f5f9603482c7f843ece8785c5b7bd09a6126e461",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta39a59b9115ae4cdf0ab744a8cfd873511ed4508acb5b266a0f3a4402bb47407.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3993ff026a3405e2b4295d33a50fb1ed0e2a9cfe1616af539e73dc932149cd38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CatalanMonodromySystem
    {K : Type _} [Field K]
    (k : Nat)
    (E : Arithmetic.ShortWeierstrass K)
    (G : Arithmetic.ECGroupLaw E) where
  expansion : CatalanExpansionSystem k
  torsionAction :
    ∀ T : Catalan.CTree,
      TorsionAction G (expansion.bundle.Fiber T)
  compatible :
    ∀ {T U} (e : expansion.Step T U)
      (P : Arithmetic.ECPoint E)
      (x : expansion.bundle.Fiber T),
        expansion.transport.transportStep e
          ((torsionAction T).act P x)
        =
        (torsionAction U).act P
          (expansion.transport.transportStep e x)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta39a59b9115ae4cdf0ab744a8cfd873511ed4508acb5b266a0f3a4402bb47407.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta39a59b9115ae4cdf0ab744a8cfd873511ed4508acb5b266a0f3a4402bb47407.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `274b9f769f4e2edc60b7284f4333cd2636b96e63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
