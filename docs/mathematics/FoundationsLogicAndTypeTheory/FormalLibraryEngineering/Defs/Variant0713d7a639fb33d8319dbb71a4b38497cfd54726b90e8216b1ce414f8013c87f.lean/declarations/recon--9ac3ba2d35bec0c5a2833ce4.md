# recOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72670d2550a3b09c7479a584bfab1e1dcf794b25f20dbc1550e9dd780b1f405d",
  "kind": "def",
  "lexical_name": "recOn",
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
  "slug": "recon--9ac3ba2d35bec0c5a2833ce4",
  "source": {
    "blob": "75f8e7628b4d4cf9fde4e28d1b24ca68f23abc7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 542,
    "line": 534,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant0713d7a639fb33d8319dbb71a4b38497cfd54726b90e8216b1ce414f8013c87f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ac3ba2d35bec0c5a2833ce45848ab61e82f6edb0c62ca236879de82bd220be7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant0713d7a639fb33d8319dbb71a4b38497cfd54726b90e8216b1ce414f8013c87f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72670d2550a3b09c7479a584bfab1e1dcf794b25f20dbc1550e9dd780b1f405d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 534–542.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def recOn {basis_hd basis_tl} {motive : MultiseriesExpansion (basis_hd :: basis_tl) → Sort*}
    (nil : ∀ f, motive (mk .nil f))
    (cons : ∀ exp coef tl f, motive (.mk (.cons exp coef tl) f))
    (ms : MultiseriesExpansion (basis_hd :: basis_tl)) : motive ms := by
  let ⟨s, f⟩ := ms
  cases s with
  | nil => apply nil
  | cons hd tl => apply cons

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant0713d7a639fb33d8319dbb71a4b38497cfd54726b90e8216b1ce414f8013c87f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant0713d7a639fb33d8319dbb71a4b38497cfd54726b90e8216b1ce414f8013c87f.lean#L534).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75f8e7628b4d4cf9fde4e28d1b24ca68f23abc7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
