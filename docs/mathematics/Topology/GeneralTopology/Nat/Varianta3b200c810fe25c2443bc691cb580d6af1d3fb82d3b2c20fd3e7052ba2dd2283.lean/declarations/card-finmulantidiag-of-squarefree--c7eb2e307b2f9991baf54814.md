# card_finMulAntidiag_of_squarefree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe790ed17edfc5fb85642b444b393262caac3a95",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 240,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c95d4175-f9ee-3341-6bbe-2f9ebb7d43e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:177651b1-8b01-c982-d22c-b9292a71911d",
  "kind": "theorem",
  "lexical_name": "card_finMulAntidiag_of_squarefree",
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
  "slug": "card-finmulantidiag-of-squarefree--c7eb2e307b2f9991baf54814",
  "source": {
    "blob": "fe790ed17edfc5fb85642b444b393262caac3a95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 240,
    "path": "GRWTSK/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7eb2e307b2f9991baf54814d1c01ec0177bbc9aa4e316a6935a794755107f70",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:177651b1-8b01-c982-d22c-b9292a71911d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_finMulAntidiag_of_squarefree {d n : ℕ} (hn : Squarefree n) :
    #(finMulAntidiag d n) = d ^ ω n := by
  rw [← card_finMulAntidiag_pi d n hn, Finset.card_pi, Finset.prod_const,
    ArithmeticFunction.cardDistinctFactors_apply, ← List.card_toFinset, toFinset_factors,
    Finset.card_fin]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe790ed17edfc5fb85642b444b393262caac3a95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
