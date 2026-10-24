# bind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb9c177fc6c30457fa0fcb69617fb8fe80d84d3bf4d2029e2e3b48c164e0194c",
  "kind": "def",
  "lexical_name": "bind",
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
  "slug": "bind--cb4af346ba3ca6e830a47ebc",
  "source": {
    "blob": "3dcb8ece4ab89f3fdf558efc835661f3ea21d3e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 335,
    "path": "GRWTSK/Topology/GeneralTopology/Ultrafilter/Variant40023f49a1c453995f5ec7788dc1b4dd9b8bbd3329bbdd9e040bf754a3e7bf16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb4af346ba3ca6e830a47ebce3563631b95e6d5dcdf32e1f726909dfa9d86b23",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ultrafilter/Variant40023f49a1c453995f5ec7788dc1b4dd9b8bbd3329bbdd9e040bf754a3e7bf16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb9c177fc6c30457fa0fcb69617fb8fe80d84d3bf4d2029e2e3b48c164e0194c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bind (f : Ultrafilter α) (m : α → Ultrafilter β) : Ultrafilter β :=
  ofComplNotMemIff (Filter.bind ↑f fun x => ↑(m x)) fun s => by
    simp only [mem_bind', mem_coe, ← compl_mem_iff_not_mem, compl_setOf, compl_compl]
#align ultrafilter.bind Ultrafilter.bind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ultrafilter/Variant40023f49a1c453995f5ec7788dc1b4dd9b8bbd3329bbdd9e040bf754a3e7bf16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ultrafilter/Variant40023f49a1c453995f5ec7788dc1b4dd9b8bbd3329bbdd9e040bf754a3e7bf16.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dcb8ece4ab89f3fdf558efc835661f3ea21d3e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
