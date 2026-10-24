# multiplicity_le_multiplicity_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77785a7d-5359-e568-6fb0-38ae2bd048cb",
  "kind": "theorem",
  "lexical_name": "multiplicity_le_multiplicity_iff",
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
  "slug": "multiplicity-le-multiplicity-iff--0eeaafc670758122361e68dc",
  "source": {
    "blob": "444a107e19247b6889c7d55808d01e9936973bbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 242,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiplicity/Variantf89a9a8f3973863aa400910ab5631f24ba64f4289e298e17052a84b8fe77888f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0eeaafc670758122361e68dc99d9812d241a5caa7a7b9846389acd75a0960ab7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Multiplicity/Variantf89a9a8f3973863aa400910ab5631f24ba64f4289e298e17052a84b8fe77888f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77785a7d-5359-e568-6fb0-38ae2bd048cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiplicity_le_multiplicity_iff {a b c d : α} :
    multiplicity a b ≤ multiplicity c d ↔ ∀ n : ℕ, a ^ n ∣ b → c ^ n ∣ d :=
  ⟨fun h n hab => pow_dvd_of_le_multiplicity (le_trans (le_multiplicity_of_pow_dvd hab) h), fun h =>
    if hab : Finite a b then by
      rw [← PartENat.natCast_get (finite_iff_dom.1 hab)];
        exact le_multiplicity_of_pow_dvd (h _ (pow_multiplicity_dvd _))
    else by
      have : ∀ n : ℕ, c ^ n ∣ d := fun n => h n (not_finite_iff_forall.1 hab _)
      rw [eq_top_iff_not_finite.2 hab, eq_top_iff_not_finite.2 (not_finite_iff_forall.2 this)]⟩
#align multiplicity.multiplicity_le_multiplicity_iff multiplicity.multiplicity_le_multiplicity_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Multiplicity/Variantf89a9a8f3973863aa400910ab5631f24ba64f4289e298e17052a84b8fe77888f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Multiplicity/Variantf89a9a8f3973863aa400910ab5631f24ba64f4289e298e17052a84b8fe77888f.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `444a107e19247b6889c7d55808d01e9936973bbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
