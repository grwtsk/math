# coe_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:639d0d05-b1d9-dbfa-06e3-f297d4dc1cb1",
  "kind": "lemma",
  "lexical_name": "coe_one",
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
  "slug": "coe-one--5df4eb0506b8ebc2b615a522",
  "source": {
    "blob": "1e8b25d15a3e89fa487265a248e72f19a1b33207",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variante817f4889bf5f009dee21bea48bbabf1d9efeae182ff461beae96c3dafab8547.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5df4eb0506b8ebc2b615a522046c643bd9b66b31f4c716500d0d15f03940ce34",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variante817f4889bf5f009dee21bea48bbabf1d9efeae182ff461beae96c3dafab8547.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:639d0d05-b1d9-dbfa-06e3-f297d4dc1cb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[enat_to_nat_coe] lemma coe_one : (1 : ENat) = ((1 : ℕ) : ENat) := rfl

attribute [enat_to_nat_coe] ENat.coe_inj ENat.coe_le_coe ENat.coe_lt_coe

open Qq Lean Elab Tactic Term Meta in
/-- Finds the first `ENat` in the context and applies the `cases` tactic to it.
Then simplifies expressions involving `⊤` using the `enat_to_nat_top` simp set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variante817f4889bf5f009dee21bea48bbabf1d9efeae182ff461beae96c3dafab8547.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variante817f4889bf5f009dee21bea48bbabf1d9efeae182ff461beae96c3dafab8547.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e8b25d15a3e89fa487265a248e72f19a1b33207` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
