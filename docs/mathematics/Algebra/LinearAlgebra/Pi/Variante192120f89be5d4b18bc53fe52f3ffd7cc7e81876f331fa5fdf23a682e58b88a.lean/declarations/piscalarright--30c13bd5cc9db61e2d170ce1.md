# piScalarRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f7a8aca3032426815131755cf076141785f5863f7066363c6d4f8ca86a48a90d",
  "kind": "def",
  "lexical_name": "piScalarRight",
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
  "slug": "piscalarright--30c13bd5cc9db61e2d170ce1",
  "source": {
    "blob": "458086242cd2554dd43f2bc0b969409aae5de442",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 158,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variante192120f89be5d4b18bc53fe52f3ffd7cc7e81876f331fa5fdf23a682e58b88a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30c13bd5cc9db61e2d170ce1f2a7c76dd0b2c8551051c9cc571b346cdb0640c3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pi/Variante192120f89be5d4b18bc53fe52f3ffd7cc7e81876f331fa5fdf23a682e58b88a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f7a8aca3032426815131755cf076141785f5863f7066363c6d4f8ca86a48a90d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def piScalarRight : N ⊗[R] (ι → R) ≃ₗ[S] (ι → N) :=
  LinearEquiv.ofLinear
    (piScalarRightHom R S N ι)
    (piScalarRightInv R S N ι)
    (by ext i x j; simp [Pi.single_apply])
    (by ext x i; simp [Pi.single_apply_smul])

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pi/Variante192120f89be5d4b18bc53fe52f3ffd7cc7e81876f331fa5fdf23a682e58b88a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pi/Variante192120f89be5d4b18bc53fe52f3ffd7cc7e81876f331fa5fdf23a682e58b88a.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `458086242cd2554dd43f2bc0b969409aae5de442` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
