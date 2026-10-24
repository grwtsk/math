# toPUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:583568a5008fb7e729d671e0e0da08b3f6cce738520fa0e8f0294928e6c916ea",
  "kind": "def",
  "lexical_name": "toPUnit",
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
  "slug": "topunit--1985f3c0be794d1b81bc6e84",
  "source": {
    "blob": "7489c5c02cf128c7fb889649ce23e3b919624ddb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 212,
    "path": "GRWTSK/Topology/GeneralTopology/Bordism/Variant5407e650f5a95665a168bd36c6287391f6502247533449bb20f16fbc43bf8bff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1985f3c0be794d1b81bc6e84886b040b7a932a99a28d51ed1057e01151fb0763",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bordism/Variant5407e650f5a95665a168bd36c6287391f6502247533449bb20f16fbc43bf8bff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:583568a5008fb7e729d671e0e0da08b3f6cce738520fa0e8f0294928e6c916ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toPUnit : SingularManifold PUnit k I where
  M := M
  f := fun _ ↦ PUnit.unit
  hf := continuous_const

variable {I' : ModelWithCorners ℝ E' H'} [FiniteDimensional ℝ E']

/--
The product of a singular `I`- and a singular `J`-manifold into a one-point space
is a singular `I.prod J`-manifold.
This construction is used to prove that the bordism group of `PUnit` is a graded commutative ring.

NB. This definition as written makes sense more generally, for `SingularManifold X k I` whenever `X`
is a topological (additive) group. However, this would not be the correct definition if `X` is not
`(P)Unit`: the bordism ring can be defined for every `C^k` manifold `X`, but the product of two
singular manifolds `(M, f)` and `(N, g)` is the fibre product of `M` and `N` w.r.t. `f` and `g`,
with its induced map into `X`.
(If `f` and `g` intersect transversely, this fibre product is a smooth manifold, of dimension
`dim M + dim N - dim X`. Otherwise, the transversality theorem proves that `f` (or `g`) admits an
arbitrarily small perturbation `f'` so `f'` and `g` are transverse. One can prove that different
perturbations yield bordant manifolds.)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bordism/Variant5407e650f5a95665a168bd36c6287391f6502247533449bb20f16fbc43bf8bff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bordism/Variant5407e650f5a95665a168bd36c6287391f6502247533449bb20f16fbc43bf8bff.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7489c5c02cf128c7fb889649ce23e3b919624ddb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
