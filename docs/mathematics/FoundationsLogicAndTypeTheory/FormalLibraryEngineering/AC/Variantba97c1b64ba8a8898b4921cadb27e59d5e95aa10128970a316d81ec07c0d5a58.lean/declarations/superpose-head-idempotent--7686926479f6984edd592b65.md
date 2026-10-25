# superpose_head_idempotent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d530fe4-c233-279a-256a-1d828688c273",
  "kind": "theorem",
  "lexical_name": "superpose_head_idempotent",
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
  "slug": "superpose-head-idempotent--7686926479f6984edd592b65",
  "source": {
    "blob": "89ada7971cade077f59d5bb40b210897a5cad7e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 584,
    "line": 578,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantba97c1b64ba8a8898b4921cadb27e59d5e95aa10128970a316d81ec07c0d5a58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7686926479f6984edd592b65d9b2d114a0bf9a8c450a9bdf00b10d22ec48b9e9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantba97c1b64ba8a8898b4921cadb27e59d5e95aa10128970a316d81ec07c0d5a58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d530fe4-c233-279a-256a-1d828688c273`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 578–584.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem superpose_head_idempotent {α} (ctx : Context α) {inst₁ : Std.Associative ctx.op} {inst₂ : Std.IdempotentOp ctx.op}
    (x : Var) (lhs₁ rhs₁ rhs : Seq) : superpose_head_idempotent_cert x lhs₁ rhs₁ rhs → lhs₁.denote ctx = rhs₁.denote ctx → lhs₁.denote ctx = rhs.denote ctx := by
  simp [superpose_head_idempotent_cert]; intro h₁ _ h₂; subst rhs
  replace h₂ : Seq.denote ctx (Seq.concat (.var x) lhs₁) = Seq.denote ctx (Seq.concat (.var x) rhs₁) := by
    simp [h₂]
  rw [← h₂, ← Seq.concat_k_eq_concat, Seq.denote_concat_of_startsWithVar ctx lhs₁ x h₁]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantba97c1b64ba8a8898b4921cadb27e59d5e95aa10128970a316d81ec07c0d5a58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantba97c1b64ba8a8898b4921cadb27e59d5e95aa10128970a316d81ec07c0d5a58.lean#L578).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89ada7971cade077f59d5bb40b210897a5cad7e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
