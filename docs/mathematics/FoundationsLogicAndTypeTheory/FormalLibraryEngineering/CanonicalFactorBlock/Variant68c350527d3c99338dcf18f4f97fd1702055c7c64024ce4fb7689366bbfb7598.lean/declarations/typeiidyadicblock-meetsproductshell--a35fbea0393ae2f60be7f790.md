# TypeIIDyadicBlock.MeetsProductShell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:647146100ec587ea533fce3abf0e20f257d5f1414d838666182a96dd91fa986a",
  "kind": "def",
  "lexical_name": "TypeIIDyadicBlock.MeetsProductShell",
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
  "slug": "typeiidyadicblock-meetsproductshell--a35fbea0393ae2f60be7f790",
  "source": {
    "blob": "ee1c3a4ce05b6a866e51b4e91561c23c590b74f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CanonicalFactorBlock/Variant68c350527d3c99338dcf18f4f97fd1702055c7c64024ce4fb7689366bbfb7598.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a35fbea0393ae2f60be7f790cbe79775013bdde2a1bb6712f84231fc953225de",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CanonicalFactorBlock/Variant68c350527d3c99338dcf18f4f97fd1702055c7c64024ce4fb7689366bbfb7598.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:647146100ec587ea533fce3abf0e20f257d5f1414d838666182a96dd91fa986a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TypeIIDyadicBlock.MeetsProductShell {N : ℕ}
    (block : TypeIIDyadicBlock N) (q : ℕ) : Prop :=
  ∃ (m : block.Left) (k : block.Right),
    vaughanFourthRootCutoff N < m.1.1 ∧
      vaughanFourthRootCutoff N < k.1.1 ∧
      2 ^ q ≤ m.1.1 * k.1.1 ∧
      m.1.1 * k.1.1 < 2 ^ (q + 1) ∧
      m.1.1 * k.1.1 ≤ 2 * N

/-- A canonical dyadic factor rectangle equipped with a proof that it meets
product shell `q` on the effective finite Type II support.

This is a subtype rather than a separate copy of the block structure.  The
standard subtype coercion therefore lets existing declarations such as
`blockLeftCoefficient B` and `blockRightCoefficient B` apply directly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CanonicalFactorBlock/Variant68c350527d3c99338dcf18f4f97fd1702055c7c64024ce4fb7689366bbfb7598.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CanonicalFactorBlock/Variant68c350527d3c99338dcf18f4f97fd1702055c7c64024ce4fb7689366bbfb7598.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee1c3a4ce05b6a866e51b4e91561c23c590b74f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
