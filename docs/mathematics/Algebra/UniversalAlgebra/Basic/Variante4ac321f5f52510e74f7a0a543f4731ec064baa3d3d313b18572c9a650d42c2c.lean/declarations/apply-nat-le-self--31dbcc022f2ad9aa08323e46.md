# apply_nat_le_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5af5e09d-5a68-ddae-6bef-ee096fccbc6f",
  "kind": "lemma",
  "lexical_name": "apply_nat_le_self",
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
  "slug": "apply-nat-le-self--31dbcc022f2ad9aa08323e46",
  "source": {
    "blob": "2ba63d4cb4ffec7ad5db3c99e3f56403d1109a61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 195,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variante4ac321f5f52510e74f7a0a543f4731ec064baa3d3d313b18572c9a650d42c2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31dbcc022f2ad9aa08323e461f06fbeb2421ec2bd1eff8cbaf88a0694d0023de",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variante4ac321f5f52510e74f7a0a543f4731ec064baa3d3d313b18572c9a650d42c2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5af5e09d-5a68-ddae-6bef-ee096fccbc6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma apply_nat_le_self [IsOrderedRing S] (n : ℕ) : abv n ≤ n := by
  cases subsingleton_or_nontrivial R
  · simp [Subsingleton.eq_zero (α := R)]
  induction n with
  | zero => simp
  | succ n ih =>
  · grw [Nat.cast_succ, Nat.cast_succ, abv.add_le, abv.map_one, ih]

end IsDomain

end Semiring

end OrderedSemiring

section OrderedRing

section Ring

variable {R S : Type*} [Ring R] [Ring S] [PartialOrder S] [IsOrderedRing S]
  (abv : AbsoluteValue R S)

@[bound]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variante4ac321f5f52510e74f7a0a543f4731ec064baa3d3d313b18572c9a650d42c2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variante4ac321f5f52510e74f7a0a543f4731ec064baa3d3d313b18572c9a650d42c2c.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ba63d4cb4ffec7ad5db3c99e3f56403d1109a61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
