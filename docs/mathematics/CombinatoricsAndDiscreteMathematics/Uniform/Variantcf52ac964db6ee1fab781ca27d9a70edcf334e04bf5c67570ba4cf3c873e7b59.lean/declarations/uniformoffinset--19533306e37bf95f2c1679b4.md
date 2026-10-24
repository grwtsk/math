# uniformOfFinset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df0c82cfae4f90854b0c977bbdf2dd023b9c20ac6a03380003aa5d2e2f334f25",
  "kind": "def",
  "lexical_name": "uniformOfFinset",
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
  "slug": "uniformoffinset--19533306e37bf95f2c1679b4",
  "source": {
    "blob": "db86b215fbfb6aefbd719a7bb4114f39e046594d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 38,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Uniform/Variantcf52ac964db6ee1fab781ca27d9a70edcf334e04bf5c67570ba4cf3c873e7b59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:19533306e37bf95f2c1679b4d3751c42a9d7af5766a64935c22f174003fd2098",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Uniform/Variantcf52ac964db6ee1fab781ca27d9a70edcf334e04bf5c67570ba4cf3c873e7b59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df0c82cfae4f90854b0c977bbdf2dd023b9c20ac6a03380003aa5d2e2f334f25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def uniformOfFinset (s : Finset α) (hs : s.Nonempty) : Pmf α := by
  refine' ofFinset (fun a => if a ∈ s then s.card⁻¹ else 0) s _ _
  · simp only [Finset.sum_ite_mem, Finset.inter_self, Finset.sum_const, nsmul_eq_mul]
    have : (s.card : ℝ≥0∞) ≠ 0 := by
      simpa only [Ne.def, Nat.cast_eq_zero, Finset.card_eq_zero] using
        Finset.nonempty_iff_ne_empty.1 hs
    refine' ENNReal.mul_inv_cancel this <| ENNReal.nat_ne_top s.card
  · exact fun x hx => by simp only [hx, if_false]
#align pmf.uniform_of_finset Pmf.uniformOfFinset

variable {s : Finset α} (hs : s.Nonempty) {a : α}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Uniform/Variantcf52ac964db6ee1fab781ca27d9a70edcf334e04bf5c67570ba4cf3c873e7b59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Uniform/Variantcf52ac964db6ee1fab781ca27d9a70edcf334e04bf5c67570ba4cf3c873e7b59.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db86b215fbfb6aefbd719a7bb4114f39e046594d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
