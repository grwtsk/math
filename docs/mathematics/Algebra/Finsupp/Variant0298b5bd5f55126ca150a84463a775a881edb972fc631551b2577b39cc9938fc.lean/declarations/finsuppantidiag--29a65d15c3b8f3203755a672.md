# finsuppAntidiag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8cd982d4b83a341a8a5d5528444bc0f096a9e47e013bed7a76eeaefc702ddb58",
  "kind": "def",
  "lexical_name": "finsuppAntidiag",
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
  "slug": "finsuppantidiag--29a65d15c3b8f3203755a672",
  "source": {
    "blob": "c11073b9ef89180ab56a15b4627893237fe30537",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 39,
    "path": "GRWTSK/Algebra/Finsupp/Variant0298b5bd5f55126ca150a84463a775a881edb972fc631551b2577b39cc9938fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:29a65d15c3b8f3203755a6728f219ae8d31ea19521ae3f012b8edd0f534b68d5",
  "verification": {
    "reference": "docs/verification/Algebra/Finsupp/Variant0298b5bd5f55126ca150a84463a775a881edb972fc631551b2577b39cc9938fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8cd982d4b83a341a8a5d5528444bc0f096a9e47e013bed7a76eeaefc702ddb58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finsuppAntidiag (s : Finset ι) (n : μ) : Finset (ι →₀ μ) :=
  (piAntidiag s n).attach.map ⟨fun f ↦ ⟨s.filter (f.1 · ≠ 0), f.1, by
    simpa using (mem_piAntidiag.1 f.2).2⟩, fun _ _ hfg ↦ Subtype.ext (congr_arg (⇑) hfg)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finsupp/Variant0298b5bd5f55126ca150a84463a775a881edb972fc631551b2577b39cc9938fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finsupp/Variant0298b5bd5f55126ca150a84463a775a881edb972fc631551b2577b39cc9938fc.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c11073b9ef89180ab56a15b4627893237fe30537` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
