# OrderedSMul.mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf0af0a2-7b05-5cc4-f385-6ffd7ec674a5",
  "kind": "theorem",
  "lexical_name": "OrderedSMul.mk'",
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
  "slug": "orderedsmul-mk--c6ba215b023a5fa20ee2257a",
  "source": {
    "blob": "48f1317cd399984e84e6a4ebd5fadfbb304ed874",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 125,
    "path": "GRWTSK/Algebra/LinearAlgebra/OrderedSMul/Varianta3b7d87e5b03d0b471a6fd3e84da05966f57c0de10726c6bfb9139fe5a111f69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6ba215b023a5fa20ee2257ae32e0a6f25f9ceba8f5be295cc14746a3b07641e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/OrderedSMul/Varianta3b7d87e5b03d0b471a6fd3e84da05966f57c0de10726c6bfb9139fe5a111f69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf0af0a2-7b05-5cc4-f385-6ffd7ec674a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem OrderedSMul.mk' (h : ∀ ⦃a b : M⦄ ⦃c : 𝕜⦄, a < b → 0 < c → c • a ≤ c • b) :
    OrderedSMul 𝕜 M := by
  have hlt' : ∀ (a b : M) (c : 𝕜), a < b → 0 < c → c • a < c • b := by
    refine fun a b c hab hc => (h hab hc).lt_of_ne ?_
    rw [Ne, hc.ne'.isUnit.smul_left_cancel]
    exact hab.ne
  refine ⟨fun {a b c} => hlt' a b c, fun {a b c hab hc} => ?_⟩
  obtain ⟨c, rfl⟩ := hc.ne'.isUnit
  rw [← inv_smul_smul c a, ← inv_smul_smul c b]
  refine hlt' _ _ _ hab (pos_of_mul_pos_right ?_ hc.le)
  simp only [c.mul_inv, zero_lt_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/OrderedSMul/Varianta3b7d87e5b03d0b471a6fd3e84da05966f57c0de10726c6bfb9139fe5a111f69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/OrderedSMul/Varianta3b7d87e5b03d0b471a6fd3e84da05966f57c0de10726c6bfb9139fe5a111f69.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48f1317cd399984e84e6a4ebd5fadfbb304ed874` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
