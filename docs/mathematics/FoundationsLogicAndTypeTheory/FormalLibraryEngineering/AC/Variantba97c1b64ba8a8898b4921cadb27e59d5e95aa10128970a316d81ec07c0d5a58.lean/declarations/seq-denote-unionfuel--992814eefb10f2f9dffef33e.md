# Seq.denote_unionFuel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7255bd05-fecf-8a85-b3cf-9a4fd8d512ac",
  "kind": "theorem",
  "lexical_name": "Seq.denote_unionFuel",
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
  "slug": "seq-denote-unionfuel--992814eefb10f2f9dffef33e",
  "source": {
    "blob": "89ada7971cade077f59d5bb40b210897a5cad7e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 447,
    "line": 432,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantba97c1b64ba8a8898b4921cadb27e59d5e95aa10128970a316d81ec07c0d5a58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:992814eefb10f2f9dffef33e07d37616548686ebbe64c587d1a54bfc04988d76",
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

Occurrence: `result:7255bd05-fecf-8a85-b3cf-9a4fd8d512ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Seq.denote_unionFuel {α} (ctx : Context α) {inst₁ : Std.Associative ctx.op} {inst₂ : Std.Commutative ctx.op} (fuel : Nat) (s₁ s₂ : Seq)
    : (s₁.unionFuel fuel s₂).denote ctx = ctx.op (s₁.denote ctx) (s₂.denote ctx) := by
  fun_induction unionFuel <;> simp
  next => simp [Std.Commutative.comm (self := inst₂)]
  next => simp [Std.Commutative.comm (self := inst₂)]
  next ih => simp [ih, Std.Associative.assoc (self := inst₁)]
  next x₁ s₁ x₂ s₂ h ih =>
    simp [ih]
    rw [← Std.Associative.assoc (self := inst₁), ← Std.Associative.assoc (self := inst₁), Std.Commutative.comm (self := inst₂) (x₂.denote ctx)]
    rw [Std.Associative.assoc (self := inst₁), Std.Associative.assoc (self := inst₁), Std.Associative.assoc (self := inst₁) (x₁.denote ctx)]
    apply congrArg (ctx.op (x₁.denote ctx))
    rw [← Std.Associative.assoc (self := inst₁), ← Std.Associative.assoc (self := inst₁) (s₁.denote ctx)]
    rw [Std.Commutative.comm (self := inst₂) (x₂.denote ctx)]

attribute [local simp] Seq.denote_unionFuel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantba97c1b64ba8a8898b4921cadb27e59d5e95aa10128970a316d81ec07c0d5a58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantba97c1b64ba8a8898b4921cadb27e59d5e95aa10128970a316d81ec07c0d5a58.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89ada7971cade077f59d5bb40b210897a5cad7e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
