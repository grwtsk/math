# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.MonotoneFactorial.Variant02cea5a91daa2705f70c537fb5861dad551698a49a0c3d45a5dc889f14ba8c15.Finset.prod_range_add_one_eq_factorial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae39e75c-f84d-7662-1c98-b04edf97041e",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.MonotoneFactorial.Variant02cea5a91daa2705f70c537fb5861dad551698a49a0c3d45a5dc889f14ba8c15.Finset.prod_range_add_one_eq_factorial",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-monotonefactorial-varian--ddc49eed630ea6ca932e8f9b",
  "source": {
    "blob": "6e341dc41e93dcfc2bbc04b439d79f81dfe9c32b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 57,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4eb14cb5f360b3f9cd04c2f1c81ae7fe8a3a7e0928774ff40b53822a28c65541.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddc49eed630ea6ca932e8f9b58a97e041fc2b039cbb761c2a2d0e60eb41832c0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4eb14cb5f360b3f9cd04c2f1c81ae7fe8a3a7e0928774ff40b53822a28c65541.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae39e75c-f84d-7662-1c98-b04edf97041e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.MonotoneFactorial.Variant02cea5a91daa2705f70c537fb5861dad551698a49a0c3d45a5dc889f14ba8c15.Finset.prod_range_add_one_eq_factorial (n : ℕ) : ∏ i ∈ range n, (i + 1) = (n)! :=
  factorial_eq_prod_range_add_one _ |>.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4eb14cb5f360b3f9cd04c2f1c81ae7fe8a3a7e0928774ff40b53822a28c65541.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4eb14cb5f360b3f9cd04c2f1c81ae7fe8a3a7e0928774ff40b53822a28c65541.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e341dc41e93dcfc2bbc04b439d79f81dfe9c32b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
