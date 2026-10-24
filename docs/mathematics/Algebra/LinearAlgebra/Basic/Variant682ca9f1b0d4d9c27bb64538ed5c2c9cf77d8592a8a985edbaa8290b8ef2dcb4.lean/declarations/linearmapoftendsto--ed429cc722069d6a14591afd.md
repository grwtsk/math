# linearMapOfTendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:656b97f52500f21fd0a3225f1b1874b7824425b9f41dae125a8c4d5783d667db",
  "kind": "def",
  "lexical_name": "linearMapOfTendsto",
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
  "slug": "linearmapoftendsto--ed429cc722069d6a14591afd",
  "source": {
    "blob": "5097dd7ae0d4e5c2eb3f8cb96adeb5bb188b83cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 299,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant682ca9f1b0d4d9c27bb64538ed5c2c9cf77d8592a8a985edbaa8290b8ef2dcb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed429cc722069d6a14591afd710db232cff04235528df763213a6850710e555f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant682ca9f1b0d4d9c27bb64538ed5c2c9cf77d8592a8a985edbaa8290b8ef2dcb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:656b97f52500f21fd0a3225f1b1874b7824425b9f41dae125a8c4d5783d667db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def linearMapOfTendsto (f : M₁ → M₂) (g : α → M₁ →ₛₗ[σ] M₂) [l.NeBot]
    (h : Tendsto (fun a x => g a x) l (𝓝 f)) : M₁ →ₛₗ[σ] M₂ :=
  linearMapOfMemClosureRangeCoe f <|
    mem_closure_of_tendsto h <| Eventually.of_forall fun _ => Set.mem_range_self _

variable (M₁ M₂ σ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant682ca9f1b0d4d9c27bb64538ed5c2c9cf77d8592a8a985edbaa8290b8ef2dcb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant682ca9f1b0d4d9c27bb64538ed5c2c9cf77d8592a8a985edbaa8290b8ef2dcb4.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5097dd7ae0d4e5c2eb3f8cb96adeb5bb188b83cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
