# hasLooseBVarsInRange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9cda8ad3306b47bc2ea9242ff93375f0f2d3024eaa3e65cca9492f3467f4e069",
  "kind": "def",
  "lexical_name": "hasLooseBVarsInRange",
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
  "slug": "hasloosebvarsinrange--bda6d92b314596f36b4bd575",
  "source": {
    "blob": "a6db74ad2856ddcbcb82e3f4b18101442de60f20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eta/Variantceb69d4d4cf0a98e01890140a748b2f08f1088e75222e66c62fe7fa3857b6f58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bda6d92b314596f36b4bd57503dd7accb7f0e55e81bdeae324db8a15017128ed",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eta/Variantceb69d4d4cf0a98e01890140a748b2f08f1088e75222e66c62fe7fa3857b6f58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9cda8ad3306b47bc2ea9242ff93375f0f2d3024eaa3e65cca9492f3467f4e069`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def hasLooseBVarsInRange (e : Expr) (n : Nat) : Bool :=
  e.hasLooseBVars && go n
where
  go : Nat → Bool
  | 0 => false
  | i+1 => e.hasLooseBVar i || go i

/--
Checks if `body` is eta-expanded with `n` applications: `f (.bvar (n-1)) ... (.bvar 0)`.
Returns `f` if so and `f` has no loose bvars with indices in the range `[0, n)`; otherwise returns `default`.
- `n`: number of remaining applications to check
- `i`: expected bvar index (starts at 0, increments with each application)
- `default`: returned when not eta-reducible (enables pointer equality check)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eta/Variantceb69d4d4cf0a98e01890140a748b2f08f1088e75222e66c62fe7fa3857b6f58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eta/Variantceb69d4d4cf0a98e01890140a748b2f08f1088e75222e66c62fe7fa3857b6f58.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6db74ad2856ddcbcb82e3f4b18101442de60f20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
