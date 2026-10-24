# native_fold_exact_endpoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cfa7c083-25a1-c7e6-a3e8-ae2bf0938316",
  "kind": "theorem",
  "lexical_name": "native_fold_exact_endpoints",
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
  "slug": "native-fold-exact-endpoints--e848e7fdc64c43164bc543f2",
  "source": {
    "blob": "60f30893ec923c0ac394520e7121da0e54cebb1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 81,
    "path": "GRWTSK/Analysis/MeasureTheory/MovingNativeChamber/Variant45cd8ca44af6c0f10f12cd3d0cba8a489fb5d657e18755ba3d7578e2171404de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e848e7fdc64c43164bc543f250d9f4d0f9ca33f191a6b4ba8e847b3ed53cae9d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MovingNativeChamber/Variant45cd8ca44af6c0f10f12cd3d0cba8a489fb5d657e18755ba3d7578e2171404de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfa7c083-25a1-c7e6-a3e8-ae2bf0938316`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem native_fold_exact_endpoints {a b : ℝ} (hab : a < b) :
    fold a b a = -1 ∧ fold a b b = 1 :=
  ⟨AffineAccordionWeld.fold_left _ _,
    AffineAccordionWeld.fold_right (cumulative_strictMono hab)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MovingNativeChamber/Variant45cd8ca44af6c0f10f12cd3d0cba8a489fb5d657e18755ba3d7578e2171404de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MovingNativeChamber/Variant45cd8ca44af6c0f10f12cd3d0cba8a489fb5d657e18755ba3d7578e2171404de.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60f30893ec923c0ac394520e7121da0e54cebb1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
