# inv₀_mem_inv_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20431928-425a-c662-8b25-6de2b9fe40e9",
  "kind": "lemma",
  "lexical_name": "inv₀_mem_inv_iff",
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
  "slug": "inv-mem-inv-iff--7b1558b5cca9d5e54508da10",
  "source": {
    "blob": "224f704719226915ab23482aa01c3e65c11f16af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 339,
    "path": "GRWTSK/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b1558b5cca9d5e54508da102fbd8af6115858bf8c6984c51636fd738b3f306e",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20431928-425a-c662-8b25-6de2b9fe40e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inv₀_mem_inv_iff {r : R} {a : Aˣ} :
    r⁻¹ ∈ spectrum R (↑a⁻¹ : A) ↔ r ∈ spectrum R (a : A) := by
  simp

alias ⟨of_inv₀_mem, inv₀_mem⟩ := inv₀_mem_iff
alias ⟨of_inv₀_mem_inv, inv₀_mem_inv⟩ := inv₀_mem_inv_iff

end ScalarSemifield

section ScalarField

variable {𝕜 : Type u} {A : Type v}
variable [Field 𝕜] [Ring A] [Algebra 𝕜 A]

local notation "σ" => spectrum 𝕜

local notation "↑ₐ" => algebraMap 𝕜 A

/-- Without the assumption `Nontrivial A`, then `0 : A` would be invertible. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `224f704719226915ab23482aa01c3e65c11f16af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
