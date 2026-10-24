# quadraticPlusOneResiduesEquivZModRoots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6ce617de6b28d172431600aecb00f44ced6359be0ea90197e18855dc912eaa7",
  "kind": "def",
  "lexical_name": "quadraticPlusOneResiduesEquivZModRoots",
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
  "slug": "quadraticplusoneresiduesequivzmodroots--1cdc4a3e833df261c959a2c1",
  "source": {
    "blob": "e29543503364c65c33a691c12309f73f1b3fb060",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 63,
    "path": "GRWTSK/NumberTheory/Primes/QuadraticPlusOneLocalRoots.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1cdc4a3e833df261c959a2c12d35e69e88983bfcd1177dc05597174cd15d2826",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/QuadraticPlusOneLocalRoots.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6ce617de6b28d172431600aecb00f44ced6359be0ea90197e18855dc912eaa7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def quadraticPlusOneResiduesEquivZModRoots
    (d : ℕ) [NeZero d] :
    {a // a ∈ quadraticPlusOneResidues d} ≃
      QuadraticPlusOneZModRoot d where
  toFun a := by
    have ha := (mem_quadraticPlusOneResidues.mp a.2).2
    have haZ :
        (((a.1 ^ 2 + 1 : ℕ) : ℤ) : ZMod d) = 0 := by
      apply (ZMod.intCast_zmod_eq_zero_iff_dvd
        (((a.1 ^ 2 + 1 : ℕ) : ℤ)) d).2
      exact_mod_cast ha
    refine ⟨(a.1 : ZMod d), ?_⟩
    push_cast at haZ
    exact eq_neg_of_add_eq_zero_left haZ
  invFun x := by
    refine ⟨x.1.val, ?_⟩
    rw [mem_quadraticPlusOneResidues]
    constructor
    · exact x.1.val_lt
    · have hzero :
          (((x.1.val ^ 2 + 1 : ℕ) : ℤ) : ZMod d) = 0 := by
        push_cast
        rw [ZMod.natCast_zmod_val, x.2]
        ring
      have hdivZ :=
        (ZMod.intCast_zmod_eq_zero_iff_dvd
          (((x.1.val ^ 2 + 1 : ℕ) : ℤ)) d).1 hzero
      exact_mod_cast hdivZ
  left_inv a := by
    apply Subtype.ext
    simp only
    rw [ZMod.val_natCast_of_lt
      (mem_quadraticPlusOneResidues.mp a.2).1]
  right_inv x := by
    apply Subtype.ext
    exact ZMod.natCast_zmod_val x.1

/-- Natural representative count equals the `ZMod` root-subtype cardinality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/QuadraticPlusOneLocalRoots.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/QuadraticPlusOneLocalRoots.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e29543503364c65c33a691c12309f73f1b3fb060` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
