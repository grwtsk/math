# toSubmodule'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:851d6bbb8a1221a0174d5c96ea3f9225956312ebeb5357d7c0f862d7e0ef9851",
  "kind": "def",
  "lexical_name": "toSubmodule'",
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
  "slug": "tosubmodule--78e5ed21d2ebd8f7eb32ff57",
  "source": {
    "blob": "0e2e16bfc315d33903ef77d5f90d5c675ce18444",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 120,
    "path": "GRWTSK/Algebra/Bimodule/Varianta04751c72edb32e8c2e605bb05e20269bb3f52a3b78518a826d9cc6a866b7979.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:78e5ed21d2ebd8f7eb32ff5740882dc040515ffa03ae368d0ec6ea4f9a64cd6f",
  "verification": {
    "reference": "docs/verification/Algebra/Bimodule/Varianta04751c72edb32e8c2e605bb05e20269bb3f52a3b78518a826d9cc6a866b7979.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:851d6bbb8a1221a0174d5c96ea3f9225956312ebeb5357d7c0f862d7e0ef9851`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toSubmodule' (p : Submodule (A ⊗[R] B) M) : Submodule B M :=
  { p with
    carrier := p
    smul_mem' := smul_mem' p }

end Algebra

section Ring

variable (R S M : Type*) [Ring R] [Ring S]
variable [AddCommGroup M] [Module R M] [Module S M] [SMulCommClass R S M]

/-- A `Submodule` over `R ⊗[ℕ] S` is naturally also a `Submodule` over the canonically-isomorphic
ring `R ⊗[ℤ] S`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Bimodule/Varianta04751c72edb32e8c2e605bb05e20269bb3f52a3b78518a826d9cc6a866b7979.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Bimodule/Varianta04751c72edb32e8c2e605bb05e20269bb3f52a3b78518a826d9cc6a866b7979.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e2e16bfc315d33903ef77d5f90d5c675ce18444` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
