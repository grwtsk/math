# ofInvolutive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:460d0070682cf0b3606ad8d39a477d87efb8f5c90840755302dce12cb65c9425",
  "kind": "def",
  "lexical_name": "ofInvolutive",
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
  "slug": "ofinvolutive--c68c8cc798630d8bdd4f6c05",
  "source": {
    "blob": "64fe564077cf686f3fdf852c99037c8fdf129487",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 597,
    "line": 592,
    "path": "GRWTSK/Algebra/LinearAlgebra/Equiv/Variant75c76a51fa4736a36f2d500df2312eec0ca81b8b1b4a09d70ee37623b07135d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c68c8cc798630d8bdd4f6c05c12ab09d1aaac52abd1eba10f3e66805e57343ed",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Equiv/Variant75c76a51fa4736a36f2d500df2312eec0ca81b8b1b4a09d70ee37623b07135d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:460d0070682cf0b3606ad8d39a477d87efb8f5c90840755302dce12cb65c9425`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 592–597.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofInvolutive {σ σ' : R →+* R} [RingHomInvPair σ σ'] [RingHomInvPair σ' σ]
    {_ : Module R M} (f : M →ₛₗ[σ] M) (hf : Involutive f) : M ≃ₛₗ[σ] M :=
  { f, hf.toPerm f with }
#align linear_equiv.of_involutive LinearEquiv.ofInvolutive

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Equiv/Variant75c76a51fa4736a36f2d500df2312eec0ca81b8b1b4a09d70ee37623b07135d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Equiv/Variant75c76a51fa4736a36f2d500df2312eec0ca81b8b1b4a09d70ee37623b07135d0.lean#L592).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64fe564077cf686f3fdf852c99037c8fdf129487` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
