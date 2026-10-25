# forIn_eq_forIn_keys

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9756e72-6a9e-ebc6-4e48-d7fd54b3c689",
  "kind": "theorem",
  "lexical_name": "forIn_eq_forIn_keys",
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
  "slug": "forin-eq-forin-keys--4153a27b61d5465e873b3783",
  "source": {
    "blob": "88edaba28e5ebf2aa594debeac940d2e56bf11ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1313,
    "line": 1305,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantc83eb1e2c595ebe46e350cdc2a272dc1d4839d7f6b0de0ce6c8d30c4b204139b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4153a27b61d5465e873b378307b2bdd81622c2a566558f36a2d44ebda2a4c149",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantc83eb1e2c595ebe46e350cdc2a272dc1d4839d7f6b0de0ce6c8d30c4b204139b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9756e72-6a9e-ebc6-4e48-d7fd54b3c689`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1305–1313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forIn_eq_forIn_keys [Monad m'] [LawfulMonad m']
    {f : α → δ → m' (ForInStep δ)} {init : δ} :
    m.1.forIn (fun a _ d => f a d) init = ForIn.forIn m.1.keys init f := by
  simp_to_model [forIn, keys] using List.forIn_eq_forIn_keys

namespace Const

variable {β : Type v} (m : Raw₀ α (fun _ => β))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantc83eb1e2c595ebe46e350cdc2a272dc1d4839d7f6b0de0ce6c8d30c4b204139b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantc83eb1e2c595ebe46e350cdc2a272dc1d4839d7f6b0de0ce6c8d30c4b204139b.lean#L1305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88edaba28e5ebf2aa594debeac940d2e56bf11ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
