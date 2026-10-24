# iUnion_smul_eq_ofPred_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:588dac2d-32ae-4128-1d5e-3be6d18638e2",
  "kind": "theorem",
  "lexical_name": "iUnion_smul_eq_ofPred_exists",
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
  "slug": "iunion-smul-eq-ofpred-exists--504cabb2161cd4b68aa13345",
  "source": {
    "blob": "05732c151599b59968fc91e41b7cbd73679b41f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 304,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:504cabb2161cd4b68aa13345897f5044769e4bd5ce7a45c90ab93c8d035d47af",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:588dac2d-32ae-4128-1d5e-3be6d18638e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iUnion_smul_eq_ofPred_exists {s : Set β} : ⋃ g : α, g • s = { a | ∃ g : α, g • a ∈ s } := by
  simp_rw [← iUnion_ofPred, ← iUnion_inv_smul, ← preimage_smul, preimage]

@[deprecated (since := "2026-07-09")]
alias iUnion_smul_eq_setOf_exists := iUnion_smul_eq_ofPred_exists

@[deprecated (since := "2026-07-09")]
alias iUnion_vadd_eq_setOf_exists := iUnion_vadd_eq_ofPred_exists

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05732c151599b59968fc91e41b7cbd73679b41f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
