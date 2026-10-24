# equivOfRoot_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa6131e7-6641-42f9-20f7-b5c14dc8e60a",
  "kind": "theorem",
  "lexical_name": "equivOfRoot_symm",
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
  "slug": "equivofroot-symm--8f4b6f6ec199b1d5a46b8ac7",
  "source": {
    "blob": "2429eb1e384dfdabc5bfd1cbb9e6b224c6e00e62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 382,
    "path": "GRWTSK/Algebra/LinearAlgebra/PowerBasis/Variantdd7c85f58b4350153b8c9ee41d2a77e07eedd4d4c1c2ce48f1864c2fd2903634.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f4b6f6ec199b1d5a46b8ac7aa19b44da0ef6cfaa4ba39af1c69373a2913f9ec",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PowerBasis/Variantdd7c85f58b4350153b8c9ee41d2a77e07eedd4d4c1c2ce48f1864c2fd2903634.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa6131e7-6641-42f9-20f7-b5c14dc8e60a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equivOfRoot_symm (pb : PowerBasis A S) (pb' : PowerBasis A S')
    (h₁ : aeval pb.gen (minpoly A pb'.gen) = 0) (h₂ : aeval pb'.gen (minpoly A pb.gen) = 0) :
    (pb.equivOfRoot pb' h₁ h₂).symm = pb'.equivOfRoot pb h₂ h₁ :=
  rfl

/-- `pb.equivOfMinpoly pb' h` is an equivalence of algebras with the same power basis,
where "the same" means that they have identical minimal polynomials.

See also `PowerBasis.equivOfRoot` which takes the hypothesis that each generator is a root of the
other basis' minimal polynomial; `PowerBasis.equivOfRoot` is more general if `A` is not a field.
-/
@[simps! -isSimp apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PowerBasis/Variantdd7c85f58b4350153b8c9ee41d2a77e07eedd4d4c1c2ce48f1864c2fd2903634.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PowerBasis/Variantdd7c85f58b4350153b8c9ee41d2a77e07eedd4d4c1c2ce48f1864c2fd2903634.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2429eb1e384dfdabc5bfd1cbb9e6b224c6e00e62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
