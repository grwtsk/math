# flowAutomorphismTransport_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a99a95d7efec741a1adfbf8bb0327c65ee69a19",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 243,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da0441a10f004aa7e3e83861fac743fc962cb6d7f203a13c005bc28fc42cce6e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:61130fa2-b072-80ca-f282-a297d35080fd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8328df0e-e0aa-462c-24bd-4b04b8a847c4",
  "kind": "theorem",
  "lexical_name": "flowAutomorphismTransport_bijective",
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
  "slug": "flowautomorphismtransport-bijective--11b0c285427fbe14669059cf",
  "source": {
    "blob": "9a99a95d7efec741a1adfbf8bb0327c65ee69a19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 243,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variantda0441a10f004aa7e3e83861fac743fc962cb6d7f203a13c005bc28fc42cce6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11b0c285427fbe14669059cfc4539b159e9d5c7c1e9e840fd676e476d9217421",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variantda0441a10f004aa7e3e83861fac743fc962cb6d7f203a13c005bc28fc42cce6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8328df0e-e0aa-462c-24bd-4b04b8a847c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem flowAutomorphismTransport_bijective
    {F : BinaryLogicMatrixFlow rows cols} {A : Type}
    (T : FlowAutomorphismTransport F A) :
    Function.Bijective T.transported := by
  constructor
  · intro x y h
    calc
      x = T.inverseTransported (T.transported x) :=
        (inverse_transport_forward T x).symm
      _ = T.inverseTransported (T.transported y) := by rw [h]
      _ = y := inverse_transport_forward T y
  · intro y
    exact ⟨T.inverseTransported y, forward_transport_inverse T y⟩

end FlowAutomorphismTransport

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variantda0441a10f004aa7e3e83861fac743fc962cb6d7f203a13c005bc28fc42cce6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variantda0441a10f004aa7e3e83861fac743fc962cb6d7f203a13c005bc28fc42cce6e.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a99a95d7efec741a1adfbf8bb0327c65ee69a19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
