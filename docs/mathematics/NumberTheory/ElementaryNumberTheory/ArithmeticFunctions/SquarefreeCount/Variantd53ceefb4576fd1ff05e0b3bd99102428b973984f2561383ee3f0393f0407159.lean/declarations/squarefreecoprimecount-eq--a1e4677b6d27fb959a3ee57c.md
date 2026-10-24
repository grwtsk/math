# squarefreeCoprimeCount_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dc6bafc7cf55e1aa42f97a83a9a536d964de1a27",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:40bbbae1-2d30-3564-ef69-f328d8631a98",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59089682-14ff-922e-cba4-a796888e5a87",
  "kind": "theorem",
  "lexical_name": "squarefreeCoprimeCount_eq",
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
  "slug": "squarefreecoprimecount-eq--a1e4677b6d27fb959a3ee57c",
  "source": {
    "blob": "dc6bafc7cf55e1aa42f97a83a9a536d964de1a27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 169,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1e4677b6d27fb959a3ee57c8e110c2a979ba6fb9fa8fba1079d15f030880777",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59089682-14ff-922e-cba4-a796888e5a87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squarefreeCoprimeCount_eq (h j : ℕ) :
    squarefreeCoprimeCount h j =
      ∑ d ∈ Icc 1 (Nat.sqrt j),
        (ArithmeticFunction.moebius d : ℝ) *
          (if Nat.Coprime d h then (coprimeCount h (j / d^2) : ℝ) else 0) := by
  unfold squarefreeCoprimeCount
  have hpoint (g : ℕ) (hg : g ∈ Icc 1 j) :
      (ArithmeticFunction.moebius g : ℝ)^2 =
        ∑ d ∈ Icc 1 (Nat.sqrt j), if d^2 ∣ g then
          (ArithmeticFunction.moebius d : ℝ) else 0 :=
    moebius_square_eq_sum_Icc g j (mem_Icc.mp hg).1 (mem_Icc.mp hg).2
  calc
    _ = ∑ g ∈ Icc 1 j, (∑ d ∈ Icc 1 (Nat.sqrt j),
        if d^2 ∣ g then (ArithmeticFunction.moebius d : ℝ) else 0) *
          (if Nat.Coprime g h then 1 else 0) :=
      sum_congr rfl (fun g hg ↦ by rw [hpoint g hg])
    _ = ∑ d ∈ Icc 1 (Nat.sqrt j), ∑ g ∈ Icc 1 j,
        (if d^2 ∣ g then (ArithmeticFunction.moebius d : ℝ) else 0) *
          (if Nat.Coprime g h then 1 else 0) := by
      simp_rw [sum_mul]
      rw [sum_comm]
    _ = _ := by
      apply sum_congr rfl
      intro d hd
      rw [← coprime_multiples_sum h j d (mem_Icc.mp hd).1, mul_sum]
      apply sum_congr rfl
      intro g _
      by_cases hdg : d^2 ∣ g <;> simp [hdg]


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc6bafc7cf55e1aa42f97a83a9a536d964de1a27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
