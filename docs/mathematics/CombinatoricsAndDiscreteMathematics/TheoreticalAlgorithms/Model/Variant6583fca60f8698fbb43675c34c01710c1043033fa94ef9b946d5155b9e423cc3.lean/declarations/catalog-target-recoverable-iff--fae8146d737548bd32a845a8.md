# catalog_target_recoverable_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:933a4358-c3e1-9833-9aed-d80e092e7362",
  "kind": "theorem",
  "lexical_name": "catalog_target_recoverable_iff",
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
  "slug": "catalog-target-recoverable-iff--fae8146d737548bd32a845a8",
  "source": {
    "blob": "56f78f5557c57261dac57147afa3ac64c09ffcfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 149,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Model/Variant6583fca60f8698fbb43675c34c01710c1043033fa94ef9b946d5155b9e423cc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fae8146d737548bd32a845a85cfa1ab7d60451ccf6b674a364925d8be376cdc4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Model/Variant6583fca60f8698fbb43675c34c01710c1043033fa94ef9b946d5155b9e423cc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:933a4358-c3e1-9833-9aed-d80e092e7362`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem catalog_target_recoverable_iff {V : Type*} (full : CheckedFullDeclaration)
    (algebra : CheckedRoleAlgebra full) (grammar : CheckedGrammar full algebra)
    (congruence : CheckedCongruence full algebra grammar)
    (target : Fin full.value.catalog.length → V) :
    RecoverableFrom (Quotient.mk (catalogSetoid full algebra grammar congruence)) target ↔
      ∀ left right : Fin full.value.catalog.length,
        (left.val, right.val) ∈ relationPairs congruence.candidate → target left = target right :=
  recoverableFrom_quotient_iff (catalogSetoid full algebra grammar congruence) target

/-- A target separating two admitted related catalog indices cannot be recovered
from their catalog quotient alone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Model/Variant6583fca60f8698fbb43675c34c01710c1043033fa94ef9b946d5155b9e423cc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Model/Variant6583fca60f8698fbb43675c34c01710c1043033fa94ef9b946d5155b9e423cc3.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56f78f5557c57261dac57147afa3ac64c09ffcfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
