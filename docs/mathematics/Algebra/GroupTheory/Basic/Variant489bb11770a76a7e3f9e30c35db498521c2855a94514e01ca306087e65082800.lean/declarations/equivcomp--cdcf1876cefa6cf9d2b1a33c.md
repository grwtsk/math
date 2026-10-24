# equivComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a944f7c9db08d1a28749e512143e86e198146d3cd84915f60bc78defb0bdceee",
  "kind": "def",
  "lexical_name": "equivComp",
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
  "slug": "equivcomp--cdcf1876cefa6cf9d2b1a33c",
  "source": {
    "blob": "df1a5fed32cf625d7228ccf6c28f2830aa8964eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 99,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cdcf1876cefa6cf9d2b1a33c76947ecfa942601dccf618e9e82d4e9e4825c17f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a944f7c9db08d1a28749e512143e86e198146d3cd84915f60bc78defb0bdceee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivComp : S'.Section where
  toFun := equiv ∘ σ
  rightInverse_rightHom g := by
    rw [Function.comp_apply, equiv.rightHom_map, rightHom_section]

end Section

namespace Equiv

variable {S}
variable {E' : Type*} [Group E'] {S' : GroupExtension N E' G}

/-- An equivalence of group extensions from a homomorphism making a commuting diagram. Such a
homomorphism is necessarily an isomorphism. -/
@[to_additive
/-- An equivalence of additive group extensions from a homomorphism making a commuting diagram.
Such a homomorphism is necessarily an isomorphism. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df1a5fed32cf625d7228ccf6c28f2830aa8964eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
