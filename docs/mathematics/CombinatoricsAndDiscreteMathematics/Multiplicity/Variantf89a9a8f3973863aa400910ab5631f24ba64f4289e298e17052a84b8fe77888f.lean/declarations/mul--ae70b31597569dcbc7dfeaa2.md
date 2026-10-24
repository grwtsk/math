# mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67da2f11-9df8-3a06-7fa9-410f09ae5fb6",
  "kind": "theorem",
  "lexical_name": "mul",
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
  "slug": "mul--ae70b31597569dcbc7dfeaa2",
  "source": {
    "blob": "444a107e19247b6889c7d55808d01e9936973bbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 592,
    "line": 581,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiplicity/Variantf89a9a8f3973863aa400910ab5631f24ba64f4289e298e17052a84b8fe77888f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae70b31597569dcbc7dfeaa2e19f7bdcdaf5e4414fd87c721f2f3258a420a745",
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

Occurrence: `result:67da2f11-9df8-3a06-7fa9-410f09ae5fb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 581–592.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem mul {p a b : α} (hp : Prime p) :
    multiplicity p (a * b) = multiplicity p a + multiplicity p b :=
  if h : Finite p a ∧ Finite p b then by
    rw [← PartENat.natCast_get (finite_iff_dom.1 h.1), ←
        PartENat.natCast_get (finite_iff_dom.1 h.2), ←
        PartENat.natCast_get (finite_iff_dom.1 (finite_mul hp h.1 h.2)), ← Nat.cast_add,
        PartENat.natCast_inj, multiplicity.mul' hp]
  else by
    rw [eq_top_iff_not_finite.2 (mt (finite_mul_iff hp).1 h)]
    cases' not_and_or.1 h with h h <;> simp [eq_top_iff_not_finite.2 h]
#align multiplicity.mul multiplicity.mul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Multiplicity/Variantf89a9a8f3973863aa400910ab5631f24ba64f4289e298e17052a84b8fe77888f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Multiplicity/Variantf89a9a8f3973863aa400910ab5631f24ba64f4289e298e17052a84b8fe77888f.lean#L581).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `444a107e19247b6889c7d55808d01e9936973bbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
