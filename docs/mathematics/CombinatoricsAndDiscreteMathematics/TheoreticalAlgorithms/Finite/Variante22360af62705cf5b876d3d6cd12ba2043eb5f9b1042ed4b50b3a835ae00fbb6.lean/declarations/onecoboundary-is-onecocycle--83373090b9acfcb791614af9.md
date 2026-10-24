# oneCoboundary_is_oneCocycle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "39c8dbd8fabdb707f29845223cd3233e681f82e6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 276,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e22360af62705cf5b876d3d6cd12ba2043eb5f9b1042ed4b50b3a835ae00fbb6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:28b04b44-b7cd-0cb8-210e-08208ae39e5d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4ff47a61-c969-7675-4981-3e707a080624",
  "kind": "theorem",
  "lexical_name": "oneCoboundary_is_oneCocycle",
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
  "slug": "onecoboundary-is-onecocycle--83373090b9acfcb791614af9",
  "source": {
    "blob": "39c8dbd8fabdb707f29845223cd3233e681f82e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 276,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finite/Variante22360af62705cf5b876d3d6cd12ba2043eb5f9b1042ed4b50b3a835ae00fbb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83373090b9acfcb791614af9684d603baf2df78cefabc29bfa51d985020a8fbd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finite/Variante22360af62705cf5b876d3d6cd12ba2043eb5f9b1042ed4b50b3a835ae00fbb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ff47a61-c969-7675-4981-3e707a080624`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oneCoboundary_is_oneCocycle
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρ : AdditiveAction G A}
    {z : C1 G A}
    (hz : OneCoboundary ρ z) :
    OneCocycle ρ z := by
  rcases hz with ⟨a, ha⟩
  intro g h
  calc
    z (G.mul g h)
        = A.sub (ρ.act (G.mul g h) a) a := ha (G.mul g h)
    _ = A.add (A.sub (ρ.act g a) a)
          (ρ.act g (A.sub (ρ.act h a) a)) :=
        ρ.coboundary_cocycle a g h
    _ = A.add (z g) (ρ.act g (z h)) := by
        rw [ha g, ha h]

namespace Z1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finite/Variante22360af62705cf5b876d3d6cd12ba2043eb5f9b1042ed4b50b3a835ae00fbb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finite/Variante22360af62705cf5b876d3d6cd12ba2043eb5f9b1042ed4b50b3a835ae00fbb6.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39c8dbd8fabdb707f29845223cd3233e681f82e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
