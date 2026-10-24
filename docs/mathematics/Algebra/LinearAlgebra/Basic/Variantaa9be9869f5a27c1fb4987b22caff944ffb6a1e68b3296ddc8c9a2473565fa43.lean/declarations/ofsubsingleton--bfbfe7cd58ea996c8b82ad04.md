# ofSubsingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c36060a4d19bf462968a36831d2ae6b78906cf28080f8dde664e716a727092b8",
  "kind": "def",
  "lexical_name": "ofSubsingleton",
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
  "slug": "ofsubsingleton--bfbfe7cd58ea996c8b82ad04",
  "source": {
    "blob": "c640b7ef79cb08724967a8bfaf13fe4316cd49db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 299,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantaa9be9869f5a27c1fb4987b22caff944ffb6a1e68b3296ddc8c9a2473565fa43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bfbfe7cd58ea996c8b82ad04984ea8d1e276762468ace673e26b1bf9ce7a5a89",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantaa9be9869f5a27c1fb4987b22caff944ffb6a1e68b3296ddc8c9a2473565fa43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c36060a4d19bf462968a36831d2ae6b78906cf28080f8dde664e716a727092b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofSubsingleton [Subsingleton ι] (i' : ι) : MultilinearMap R (fun _ : ι => M₂) M₂ where
  toFun := Function.eval i'
  map_add' m i x y := by
    rw [Subsingleton.elim i i']
    simp only [Function.eval, Function.update_same]
  map_smul' m i r x := by
    rw [Subsingleton.elim i i']
    simp only [Function.eval, Function.update_same]
#align multilinear_map.of_subsingleton MultilinearMap.ofSubsingleton
#align multilinear_map.of_subsingleton_apply MultilinearMap.ofSubsingleton_apply


variable (M₁) {M₂}

/-- The constant map is multilinear when `ι` is empty. -/
-- Porting note: Removed [simps] & added simpNF-approved version of the generated lemma manually.
@[simps (config := { fullyApplied := false })]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantaa9be9869f5a27c1fb4987b22caff944ffb6a1e68b3296ddc8c9a2473565fa43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantaa9be9869f5a27c1fb4987b22caff944ffb6a1e68b3296ddc8c9a2473565fa43.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c640b7ef79cb08724967a8bfaf13fe4316cd49db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
