# collision_prevents_unique_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a730d942-dbcc-4008-a824-e7053223e545",
  "kind": "theorem",
  "lexical_name": "collision_prevents_unique_preimage",
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
  "slug": "collision-prevents-unique-preimage--889d1999d1a371e862002b2e",
  "source": {
    "blob": "3cacbeaa4e51076752ccf09343537249a1c4c8be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 250,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant5ca7bdb9a6d03830e26b8c0fab4c932675b3a12df5187b5b6f33ddf1facbf6fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:889d1999d1a371e862002b2e5d171113957adf53361c2bad3f819cedbed59d04",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant5ca7bdb9a6d03830e26b8c0fab4c932675b3a12df5187b5b6f33ddf1facbf6fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a730d942-dbcc-4008-a824-e7053223e545`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem collision_prevents_unique_preimage
    {n r : Nat}
    (digest : Bits n → Bits r)
    {x y : Bits n}
    (hxy : x ≠ y)
    (hcollision : digest x = digest y) :
    ¬ ∃! input, digest input = digest x := by
  rintro ⟨input, hinput, hunique⟩
  have hx : x = input := hunique x rfl
  have hy : y = input := hunique y hcollision.symm
  exact hxy (hx.trans hy.symm)

end FilesystemCodec
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant5ca7bdb9a6d03830e26b8c0fab4c932675b3a12df5187b5b6f33ddf1facbf6fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant5ca7bdb9a6d03830e26b8c0fab4c932675b3a12df5187b5b6f33ddf1facbf6fb.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cacbeaa4e51076752ccf09343537249a1c4c8be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
