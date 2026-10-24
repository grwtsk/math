# liftOfLE_mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8baadf8-da96-830d-6966-ceabe40ea13c",
  "kind": "lemma",
  "lexical_name": "liftOfLE_mk'",
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
  "slug": "liftofle-mk--65f9f78613bd94ad7daf9d83",
  "source": {
    "blob": "a70e5a646ccd82f36078fe09761a347b25f6bf92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1177,
    "line": 1171,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant89fd9b4930d39c1854207592ac5434f86bada9d2e6aa9ecf91c197ee5a66bc3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65f9f78613bd94ad7daf9d834fbfbddad9e95e32cee5e2ac627c0ed865a27bbb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant89fd9b4930d39c1854207592ac5434f86bada9d2e6aa9ecf91c197ee5a66bc3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8baadf8-da96-830d-6966-ceabe40ea13c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1171–1177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma liftOfLE_mk' (m : M) (s : S₁) :
    liftOfLE S₁ S₂ h f₁ f₂ (mk' f₁ m s) = mk' f₂ m ⟨s.1, h s.2⟩ := by
  apply ((Module.End.isUnit_iff _).mp (map_units f₂ ⟨s, h s.2⟩)).1
  simp only [Module.algebraMap_end_apply, ← map_smul, ← Submonoid.smul_def, mk'_cancel']
  rw [liftOfLE, lift_apply]
  exact (mk'_cancel' (S := S₂) f₂ m ⟨s.1, h s.2⟩).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant89fd9b4930d39c1854207592ac5434f86bada9d2e6aa9ecf91c197ee5a66bc3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant89fd9b4930d39c1854207592ac5434f86bada9d2e6aa9ecf91c197ee5a66bc3c.lean#L1171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a70e5a646ccd82f36078fe09761a347b25f6bf92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
