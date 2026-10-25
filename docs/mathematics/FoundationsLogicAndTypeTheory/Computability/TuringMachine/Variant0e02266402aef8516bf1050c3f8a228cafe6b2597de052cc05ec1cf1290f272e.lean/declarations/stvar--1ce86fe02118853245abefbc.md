# stVar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cbe597066200b43754df01705e32ad117977d219a0a626dab268663e741a3f66",
  "kind": "def",
  "lexical_name": "stVar",
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
  "slug": "stvar--1ce86fe02118853245abefbc",
  "source": {
    "blob": "8107e333e24b47c8510d969a2fa9c22e4528d5ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 409,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant0e02266402aef8516bf1050c3f8a228cafe6b2597de052cc05ec1cf1290f272e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ce86fe02118853245abefbc88c4df62a13f367d2dc7d87146e29d8eb861f462",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant0e02266402aef8516bf1050c3f8a228cafe6b2597de052cc05ec1cf1290f272e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cbe597066200b43754df01705e32ad117977d219a0a626dab268663e741a3f66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def stVar {k : K} (v : σ) (l : List (Γ k)) : StAct K Γ σ k → σ
  | push _ => v
  | peek f => f v l.head?
  | pop f => f v l.head?

/-- The effect of a stack action on the stack. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant0e02266402aef8516bf1050c3f8a228cafe6b2597de052cc05ec1cf1290f272e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant0e02266402aef8516bf1050c3f8a228cafe6b2597de052cc05ec1cf1290f272e.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8107e333e24b47c8510d969a2fa9c22e4528d5ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
