# inventory_log_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61d93de0-fd79-bef7-2a24-fd6d1f75f180",
  "kind": "theorem",
  "lexical_name": "inventory_log_lower",
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
  "slug": "inventory-log-lower--466702b78dfaf1beba57fddc",
  "source": {
    "blob": "44f349fb8182cc46eea26f7fa0fe5a694e3d2671",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 462,
    "line": 382,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:466702b78dfaf1beba57fddcef1d3eaf764a874d2e65c3b7407af9a339da6d1e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61d93de0-fd79-bef7-2a24-fd6d1f75f180`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–462.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inventory_log_lower : ∀ p ∈ primeInventory,
    0 ≤ certifiedLogLower p ∧ certifiedLogLower p ≤ Real.log p := by
  intro p hp
  simp only [primeInventory, mem_insert, mem_singleton] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · have h := log_two_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_3_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_5_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_7_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_11_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_13_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_17_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_19_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_23_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_29_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_31_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_37_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_41_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_43_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_47_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_53_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_59_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_61_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_67_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_71_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_73_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_79_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_83_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_89_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_97_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ArithmeticInterceptFinite/Variant3dc209ad60eaf78920fb7b7296f89212273422ec2acadd8cd169f00000ffee5d.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44f349fb8182cc46eea26f7fa0fe5a694e3d2671` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
