# recover'.parenthesizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c9c8bc55704884fd7ab17fff6a268f3255177315213135b52256972e1878db1",
  "kind": "def",
  "lexical_name": "recover'.parenthesizer",
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
  "slug": "recover-parenthesizer--fd087dfca9b3fb27cc401902",
  "source": {
    "blob": "67adf57b2873a885e7d24eeabe4e67d7843c03de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 312,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parenthesizer/Variant385818405e9e782840931e945c52a985d747e2e00f4a4aca58e8f26117b3ae50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd087dfca9b3fb27cc4019028c12c6f5e7f77860642bdec89f1794e4ab010fd3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parenthesizer/Variant385818405e9e782840931e945c52a985d747e2e00f4a4aca58e8f26117b3ae50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c9c8bc55704884fd7ab17fff6a268f3255177315213135b52256972e1878db1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def recover'.parenthesizer (p : PrettyPrinter.Parenthesizer) : PrettyPrinter.Parenthesizer := p

-- `mkAntiquot` is quite complex, so we'd rather have its parenthesizer synthesized below the actual parser definition.
-- Note that there is a mutual recursion
-- `categoryParser -> mkAntiquot -> termParser -> categoryParser`, so we need to introduce an indirection somewhere
-- anyway.
set_option compiler.ignoreBorrowAnnotation true in
@[extern "lean_mk_antiquot_parenthesizer"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parenthesizer/Variant385818405e9e782840931e945c52a985d747e2e00f4a4aca58e8f26117b3ae50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parenthesizer/Variant385818405e9e782840931e945c52a985d747e2e00f4a4aca58e8f26117b3ae50.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67adf57b2873a885e7d24eeabe4e67d7843c03de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
