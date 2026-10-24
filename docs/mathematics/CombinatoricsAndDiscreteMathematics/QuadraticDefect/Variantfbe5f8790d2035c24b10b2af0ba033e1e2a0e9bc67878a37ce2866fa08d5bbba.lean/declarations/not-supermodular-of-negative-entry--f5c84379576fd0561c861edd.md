# not_supermodular_of_negative_entry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac060c75-fd54-ecbe-bdac-6994821594f2",
  "kind": "theorem",
  "lexical_name": "not_supermodular_of_negative_entry",
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
  "slug": "not-supermodular-of-negative-entry--f5c84379576fd0561c861edd",
  "source": {
    "blob": "b9ffac11e84cb22c9c26614dbd2cc329c2e77e8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 117,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/QuadraticDefect/Variantfbe5f8790d2035c24b10b2af0ba033e1e2a0e9bc67878a37ce2866fa08d5bbba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5c84379576fd0561c861edd2f578609cbd9a796e43f4fce575b3df1cb199d5d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/QuadraticDefect/Variantfbe5f8790d2035c24b10b2af0ba033e1e2a0e9bc67878a37ce2866fa08d5bbba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac060c75-fd54-ecbe-bdac-6994821594f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_supermodular_of_negative_entry {H : Matrix ι ι ℂ}
    (hH : H.IsHermitian) {i j : ι} (hne : i ≠ j) (hneg : (H i j).re < 0) :
    ¬ MaximalDefect.Supermodular (value H) := by
  apply not_supermodular_of_negative_cross hH {i} {j}
  simpa [Finset.sdiff_singleton_eq_erase, hne, hne.symm, cross_singletons] using hneg

end FormalResearch.PositiveAtlas.QuadraticDefect
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/QuadraticDefect/Variantfbe5f8790d2035c24b10b2af0ba033e1e2a0e9bc67878a37ce2866fa08d5bbba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/QuadraticDefect/Variantfbe5f8790d2035c24b10b2af0ba033e1e2a0e9bc67878a37ce2866fa08d5bbba.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9ffac11e84cb22c9c26614dbd2cc329c2e77e8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
