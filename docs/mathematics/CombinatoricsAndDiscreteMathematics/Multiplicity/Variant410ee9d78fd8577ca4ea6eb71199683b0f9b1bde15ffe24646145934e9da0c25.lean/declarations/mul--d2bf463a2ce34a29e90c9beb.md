# mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf2a5cf144ee1c7d091e926d1b16cf829060ede9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 573,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/410ee9d78fd8577ca4ea6eb71199683b0f9b1bde15ffe24646145934e9da0c25.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:21246d58-f7e2-e7a7-b0a9-7ee504769214",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c236d3f-f131-8422-c638-4d055737cd6f",
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
  "slug": "mul--d2bf463a2ce34a29e90c9beb",
  "source": {
    "blob": "bf2a5cf144ee1c7d091e926d1b16cf829060ede9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 584,
    "line": 573,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiplicity/Variant410ee9d78fd8577ca4ea6eb71199683b0f9b1bde15ffe24646145934e9da0c25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2bf463a2ce34a29e90c9bebc785e1447993205e98dcec8db4178c6942d4586f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Multiplicity/Variant410ee9d78fd8577ca4ea6eb71199683b0f9b1bde15ffe24646145934e9da0c25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c236d3f-f131-8422-c638-4d055737cd6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 573–584.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Multiplicity/Variant410ee9d78fd8577ca4ea6eb71199683b0f9b1bde15ffe24646145934e9da0c25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Multiplicity/Variant410ee9d78fd8577ca4ea6eb71199683b0f9b1bde15ffe24646145934e9da0c25.lean#L573).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf2a5cf144ee1c7d091e926d1b16cf829060ede9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
