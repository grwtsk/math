# Function.Injective.mulDistribMulAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f2ade6af35c92c19a89ed1818afd22ee3174fba8c86291215b196297b77c52f4",
  "kind": "def",
  "lexical_name": "Function.Injective.mulDistribMulAction",
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
  "slug": "function-injective-muldistribmulaction--40a2def5163fa8c943c63f7d",
  "source": {
    "blob": "d1b8b03967b2f390f2f92054254a3db7564f53f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1016,
    "line": 1005,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant48efdafdb5abf1404cef491160fee73b2b2ae5f31c45d73782ef3bcd014f6ef3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40a2def5163fa8c943c63f7d84b208a5b6a20a1e66d4306db3bb7586ee16618c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant48efdafdb5abf1404cef491160fee73b2b2ae5f31c45d73782ef3bcd014f6ef3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f2ade6af35c92c19a89ed1818afd22ee3174fba8c86291215b196297b77c52f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1005–1016.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def Function.Injective.mulDistribMulAction [Monoid B] [SMul M B] (f : B →* A)
    (hf : Injective f) (smul : ∀ (c : M) (x), f (c • x) = c • f x) : MulDistribMulAction M B :=
  { hf.mulAction f smul with
    smul := (· • ·),
    smul_mul := fun c x y => hf <| by simp only [smul, f.map_mul, smul_mul'],
    smul_one := fun c => hf <| by simp only [smul, f.map_one, smul_one] }
#align function.injective.mul_distrib_mul_action Function.Injective.mulDistribMulAction

/-- Pushforward a multiplicative distributive multiplicative action along a surjective monoid
homomorphism.
See note [reducible non-instances]. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant48efdafdb5abf1404cef491160fee73b2b2ae5f31c45d73782ef3bcd014f6ef3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant48efdafdb5abf1404cef491160fee73b2b2ae5f31c45d73782ef3bcd014f6ef3.lean#L1005).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1b8b03967b2f390f2f92054254a3db7564f53f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
