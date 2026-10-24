# Ideal.ResidueField.mapₐ_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2f4efea-0164-c53a-ec3f-57863af5ea0d",
  "kind": "lemma",
  "lexical_name": "Ideal.ResidueField.mapₐ_apply",
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
  "slug": "ideal-residuefield-map-apply--5a1ee6af9fb08c89a61ddfaf",
  "source": {
    "blob": "30b043cd7f8c78a54e89369f252fc88c4ec5b3bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 55,
    "path": "GRWTSK/Algebra/Ideal/Variantc0dcfb74ecfbf8362c6159fb60f5f0bd2ebc62a29c3fdc73997819cf51e01938.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a1ee6af9fb08c89a61ddfaf5b899880b7994278bebc91004b59950d23246313",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variantc0dcfb74ecfbf8362c6159fb60f5f0bd2ebc62a29c3fdc73997819cf51e01938.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2f4efea-0164-c53a-ec3f-57863af5ea0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma Ideal.ResidueField.mapₐ_apply (I : Ideal R) [I.IsPrime] (J : Ideal A) [J.IsPrime]
    (hf : I = J.comap (algebraMap R A)) (x) :
    Ideal.ResidueField.mapₐ I J hf x = Ideal.ResidueField.map I J _ hf x := rfl

variable {I} in
@[simp high] -- marked `high` to override the more general `FaithfulSMul.algebraMap_eq_zero_iff`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variantc0dcfb74ecfbf8362c6159fb60f5f0bd2ebc62a29c3fdc73997819cf51e01938.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variantc0dcfb74ecfbf8362c6159fb60f5f0bd2ebc62a29c3fdc73997819cf51e01938.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30b043cd7f8c78a54e89369f252fc88c4ec5b3bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
