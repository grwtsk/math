# card_finsuppAntidiag_nat_eq_choose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a722acbdea0b973630184da501b3c4ee556c9f5c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d11159dca7294a72faf865e32ca5cbb1f0d3a6367dfc7ab59e9bd1786f578df5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eb1c81f2-e183-f2cb-594c-4f3062406c1d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:78f56f52-5f04-1168-6014-39809c5fec34",
  "kind": "theorem",
  "lexical_name": "card_finsuppAntidiag_nat_eq_choose",
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
  "slug": "card-finsuppantidiag-nat-eq-choose--f46b65b45a5ed254686ce610",
  "source": {
    "blob": "a722acbdea0b973630184da501b3c4ee556c9f5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 73,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FinsuppEquiv/Variantd11159dca7294a72faf865e32ca5cbb1f0d3a6367dfc7ab59e9bd1786f578df5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f46b65b45a5ed254686ce6103ffd7cc12239b2a9b48ae0dae6538c4d16db4bb0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FinsuppEquiv/Variantd11159dca7294a72faf865e32ca5cbb1f0d3a6367dfc7ab59e9bd1786f578df5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78f56f52-5f04-1168-6014-39809c5fec34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_finsuppAntidiag_nat_eq_choose (n : ℕ) :
    #(s.finsuppAntidiag n) = (#s + n - 1).choose n := by
  simp [card_eq_of_equiv_fintype (finsuppAntidiagEquiv s n), Sym.card_sym_eq_choose]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FinsuppEquiv/Variantd11159dca7294a72faf865e32ca5cbb1f0d3a6367dfc7ab59e9bd1786f578df5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FinsuppEquiv/Variantd11159dca7294a72faf865e32ca5cbb1f0d3a6367dfc7ab59e9bd1786f578df5.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a722acbdea0b973630184da501b3c4ee556c9f5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
