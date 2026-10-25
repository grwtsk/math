# pmap_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d471d3b-51f0-dd7c-d71a-c3ee2132df1c",
  "kind": "lemma",
  "lexical_name": "pmap_map",
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
  "slug": "pmap-map--f47bc6887de49e0a08dca6f9",
  "source": {
    "blob": "8f197dcc788141cea6021e66b1c934785e90b0bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 478,
    "line": 474,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sym2/Variant80e002cb09e2281b392417d70cebfaf34d2891c485662f1c1dc78749b0cf73f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f47bc6887de49e0a08dca6f94a5d1cad0210240fb212ff011232ceac8e99c732",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sym2/Variant80e002cb09e2281b392417d70cebfaf34d2891c485662f1c1dc78749b0cf73f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d471d3b-51f0-dd7c-d71a-c3ee2132df1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 474–478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pmap_map {P : α → Prop} {Q : β → Prop} (f : ∀ a, P a → β) (g : β → γ)
    (z : Sym2 α) (h : ∀ a ∈ z, P a) (h' : ∀ b ∈ z.pmap f h, Q b) :
    (z.pmap f h).map g = z.pmap (fun a ha => g (f a (h a ha))) (fun _ ha ↦ ha) := by
  cases z; rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sym2/Variant80e002cb09e2281b392417d70cebfaf34d2891c485662f1c1dc78749b0cf73f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sym2/Variant80e002cb09e2281b392417d70cebfaf34d2891c485662f1c1dc78749b0cf73f6.lean#L474).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f197dcc788141cea6021e66b1c934785e90b0bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
