# AntivaryOn.pow_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb9e15e2-0639-e639-31a5-a8f097311291",
  "kind": "lemma",
  "lexical_name": "AntivaryOn.pow_left",
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
  "slug": "antivaryon-pow-left--23236deabcf2c6ba96284b24",
  "source": {
    "blob": "80b8f51dc84189d9d9cfdbe78c2b3921b6c553d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 66,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Monovary/Variant55bef5add8a8bee4378ef033c33235962c823e80b25d3bcfdb1be313693c5e5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23236deabcf2c6ba96284b2415de0a28d6304af8411142d98d89312b100460b8",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Monovary/Variant55bef5add8a8bee4378ef033c33235962c823e80b25d3bcfdb1be313693c5e5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb9e15e2-0639-e639-31a5-a8f097311291`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] lemma AntivaryOn.pow_left (hfg : AntivaryOn f g s) (n : ℕ) :
    AntivaryOn (f ^ n) g s := fun _i hi _j hj hij ↦ pow_le_pow_left' (hfg hi hj hij) _

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Monovary/Variant55bef5add8a8bee4378ef033c33235962c823e80b25d3bcfdb1be313693c5e5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Monovary/Variant55bef5add8a8bee4378ef033c33235962c823e80b25d3bcfdb1be313693c5e5c.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80b8f51dc84189d9d9cfdbe78c2b3921b6c553d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
