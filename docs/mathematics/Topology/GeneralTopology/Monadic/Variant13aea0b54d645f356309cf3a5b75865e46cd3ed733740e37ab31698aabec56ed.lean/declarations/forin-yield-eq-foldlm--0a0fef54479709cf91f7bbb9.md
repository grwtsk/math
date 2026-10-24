# forIn_yield_eq_foldlM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:673d1a05-c617-c721-0d6c-e018508fabf7",
  "kind": "theorem",
  "lexical_name": "forIn_yield_eq_foldlM",
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
  "slug": "forin-yield-eq-foldlm--0a0fef54479709cf91f7bbb9",
  "source": {
    "blob": "e534dc0c099bb59e3ff9233459b0c0160027bbc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 427,
    "path": "GRWTSK/Topology/GeneralTopology/Monadic/Variant13aea0b54d645f356309cf3a5b75865e46cd3ed733740e37ab31698aabec56ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a0fef54479709cf91f7bbb9049a4c2e544decf390349c12074ec44ac40c6089",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monadic/Variant13aea0b54d645f356309cf3a5b75865e46cd3ed733740e37ab31698aabec56ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:673d1a05-c617-c721-0d6c-e018508fabf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 427–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem forIn_yield_eq_foldlM [Monad m] [LawfulMonad m]
    {l : List α} (f : α → β → m γ) (g : α → β → γ → β) (init : β) :
    forIn l init (fun a b => (fun c => .yield (g a b c)) <$> f a b) =
      l.foldlM (fun b a => g a b <$> f a b) init := by
  simp only [forIn_eq_foldlM]
  induction l generalizing init <;> simp_all

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monadic/Variant13aea0b54d645f356309cf3a5b75865e46cd3ed733740e37ab31698aabec56ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monadic/Variant13aea0b54d645f356309cf3a5b75865e46cd3ed733740e37ab31698aabec56ed.lean#L427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e534dc0c099bb59e3ff9233459b0c0160027bbc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
