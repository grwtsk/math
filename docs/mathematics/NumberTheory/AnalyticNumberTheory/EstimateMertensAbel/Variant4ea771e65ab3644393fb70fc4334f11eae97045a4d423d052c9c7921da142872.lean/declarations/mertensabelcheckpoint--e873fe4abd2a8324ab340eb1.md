# MertensAbelCheckpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba075429c0f36b05a91f8b1312e8c91b95d23d412a5ff653fa1c5a26b913b609",
  "kind": "def",
  "lexical_name": "MertensAbelCheckpoint",
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
  "slug": "mertensabelcheckpoint--e873fe4abd2a8324ab340eb1",
  "source": {
    "blob": "345d4125bba9e8a2dd015d143ed47b0531c8c7fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 220,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant4ea771e65ab3644393fb70fc4334f11eae97045a4d423d052c9c7921da142872.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e873fe4abd2a8324ab340eb1d1b19ee12e5207c3ab27325ef1f275ab799b19ad",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant4ea771e65ab3644393fb70fc4334f11eae97045a4d423d052c9c7921da142872.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba075429c0f36b05a91f8b1312e8c91b95d23d412a5ff653fa1c5a26b913b609`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MertensAbelCheckpoint : Prop :=
  ∀ A : ℝ, 1 ≤ A →
    ∀ Phi : ℝ → ℝ,
      SourceMobiusKernelContract A Phi →
        (∑ d ∈ Finset.Ioc
            ⌊sourceLower A⌋₊ ⌊sourceUpper A⌋₊,
          realMoebius d * Phi d) =
          mertensKernelIntegral A Phi -
            mertens (sourceLower A) * Phi (sourceLower A)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant4ea771e65ab3644393fb70fc4334f11eae97045a4d423d052c9c7921da142872.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant4ea771e65ab3644393fb70fc4334f11eae97045a4d423d052c9c7921da142872.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `345d4125bba9e8a2dd015d143ed47b0531c8c7fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
