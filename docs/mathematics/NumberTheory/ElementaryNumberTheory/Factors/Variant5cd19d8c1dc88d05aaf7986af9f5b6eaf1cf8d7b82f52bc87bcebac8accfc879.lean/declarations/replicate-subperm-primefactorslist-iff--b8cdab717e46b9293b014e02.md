# replicate_subperm_primeFactorsList_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54a09b7d-f360-49fe-cf71-e0322ac3d44e",
  "kind": "theorem",
  "lexical_name": "replicate_subperm_primeFactorsList_iff",
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
  "slug": "replicate-subperm-primefactorslist-iff--b8cdab717e46b9293b014e02",
  "source": {
    "blob": "747602f04098ab86237467f1a3966af27f87249d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 247,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8cdab717e46b9293b014e02658b1abd5972f35f02afb0d06bb915393b85ea37",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54a09b7d-f360-49fe-cf71-e0322ac3d44e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem replicate_subperm_primeFactorsList_iff {a b n : ℕ} (ha : Prime a) (hb : b ≠ 0) :
    replicate n a <+~ primeFactorsList b ↔ a ^ n ∣ b := by
  induction n generalizing b with
  | zero => simp
  | succ n ih =>
    constructor
    · rw [List.subperm_iff]
      rintro ⟨u, hu1, hu2⟩
      rw [← Nat.prod_primeFactorsList hb, ← hu1.prod_eq, ← prod_replicate]
      exact hu2.prod_dvd_prod
    · rintro ⟨c, rfl⟩
      rw [Ne, pow_succ', mul_assoc, mul_eq_zero, _root_.not_or] at hb
      rw [pow_succ', mul_assoc, replicate_succ,
        (Nat.perm_primeFactorsList_mul hb.1 hb.2).subperm_left, primeFactorsList_prime ha,
        singleton_append, subperm_cons, ih hb.2]
      exact dvd_mul_right _ _

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `747602f04098ab86237467f1a3966af27f87249d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
