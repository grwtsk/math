# bijective_frobeniusAlgEquivOfAlgebraic_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:742edba6-0dbe-6f65-1e13-6c6ff0c96efb",
  "kind": "theorem",
  "lexical_name": "bijective_frobeniusAlgEquivOfAlgebraic_pow",
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
  "slug": "bijective-frobeniusalgequivofalgebraic-pow--c1a9301c5c7e8035f9f2ee21",
  "source": {
    "blob": "719e419a79cc536ca864c3bf1e92572c473e8e4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 411,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant7b86651406816f1e8b3bf7a579c1f67a3e78203eec02f805855e6c4b7a3acf86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1a9301c5c7e8035f9f2ee21b79c9754c20d37a28cc0d18c77146cce447f75c1",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant7b86651406816f1e8b3bf7a579c1f67a3e78203eec02f805855e6c4b7a3acf86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:742edba6-0dbe-6f65-1e13-6c6ff0c96efb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bijective_frobeniusAlgEquivOfAlgebraic_pow :
    Function.Bijective fun n : Fin (Module.finrank K L) ↦ frobeniusAlgEquivOfAlgebraic K L ^ n.1 :=
  ((Algebra.IsAlgebraic.algEquivEquivAlgHom K L).bijective.of_comp_iff' _).mp <| by
    simpa only [Function.comp_def, map_pow] using! bijective_frobeniusAlgHom_pow K L

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant7b86651406816f1e8b3bf7a579c1f67a3e78203eec02f805855e6c4b7a3acf86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant7b86651406816f1e8b3bf7a579c1f67a3e78203eec02f805855e6c4b7a3acf86.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `719e419a79cc536ca864c3bf1e92572c473e8e4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
