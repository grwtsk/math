# mul_rightDvd_mul_iff_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c689d0b-af72-a354-307b-43befb124e7c",
  "kind": "theorem",
  "lexical_name": "mul_rightDvd_mul_iff_left",
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
  "slug": "mul-rightdvd-mul-iff-left--37c7a18c1510b72a4824ae1b",
  "source": {
    "blob": "c976fe5648c800214127db27616eedd6fc7d27ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 169,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Varianta1b86c6fb14725f6e6750a0c84fa03053579603478144529b73b810d8dace253.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37c7a18c1510b72a4824ae1bf21a9ac5840b6aead68a5773e3337ad33ed76f8f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Varianta1b86c6fb14725f6e6750a0c84fa03053579603478144529b73b810d8dace253.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c689d0b-af72-a354-307b-43befb124e7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_rightDvd_mul_iff_left : b * a ∣ᵣ c * a ↔ b ∣ᵣ c :=
  ⟨fun ⟨d, eq⟩ ↦ ⟨d, mul_right_cancel (eq.trans (mul_assoc ..).symm)⟩, RightDvd.mul_const a⟩

end RightCancelSemigroup

section Monoid
variable [Monoid α] {a b : α} {m n : ℕ}

@[refl, simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Varianta1b86c6fb14725f6e6750a0c84fa03053579603478144529b73b810d8dace253.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Varianta1b86c6fb14725f6e6750a0c84fa03053579603478144529b73b810d8dace253.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c976fe5648c800214127db27616eedd6fc7d27ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
