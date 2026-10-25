# mkToRealNonnegProof?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f40b6a40a8b17faa4f72f456b4de32d2fef1e734a44cf64d2bd4a52f3e0e876",
  "kind": "def",
  "lexical_name": "mkToRealNonnegProof?",
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
  "slug": "mktorealnonnegproof--7c35959514e1503ea39eecb5",
  "source": {
    "blob": "e81bb2029b4fa7f3e2b27c2816b4560fe7a45597",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 57,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NNRealPreprocessor/Variant61a3f1aebeb5b8809eb261ebe35553ed96630bb167da60b05e9f7e30ea863e19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c35959514e1503ea39eecb548d8ff637047a014a390d4e781db9e9915c5ec77",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NNRealPreprocessor/Variant61a3f1aebeb5b8809eb261ebe35553ed96630bb167da60b05e9f7e30ea863e19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f40b6a40a8b17faa4f72f456b4de32d2fef1e734a44cf64d2bd4a52f3e0e876`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkToRealNonnegProof? (e : Expr) : MetaM (Option Expr) :=
  try commitIfNoEx (mkAppM ``NNReal.coe_nonneg #[e])
  catch e => do
    trace[linarith] "Got exception when using `coe_nonneg` {e.toMessageData}"
    return none

@[deprecated (since := "2026-05-27")] alias mk_toReal_nonneg_prf := mkToRealNonnegProof?

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NNRealPreprocessor/Variant61a3f1aebeb5b8809eb261ebe35553ed96630bb167da60b05e9f7e30ea863e19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NNRealPreprocessor/Variant61a3f1aebeb5b8809eb261ebe35553ed96630bb167da60b05e9f7e30ea863e19.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e81bb2029b4fa7f3e2b27c2816b4560fe7a45597` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
