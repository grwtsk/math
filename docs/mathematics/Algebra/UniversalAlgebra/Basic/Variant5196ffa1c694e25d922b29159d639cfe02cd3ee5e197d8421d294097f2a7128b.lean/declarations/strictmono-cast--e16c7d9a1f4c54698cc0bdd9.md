# strictMono_cast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b753663473ba0993073a74d5dc805111a3ed27c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ec1c70e-f568-e359-f652-3f6b840a3427",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8882484c-8d5e-7a69-b42d-6262f23eda72",
  "kind": "theorem",
  "lexical_name": "strictMono_cast",
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
  "slug": "strictmono-cast--e16c7d9a1f4c54698cc0bdd9",
  "source": {
    "blob": "9b753663473ba0993073a74d5dc805111a3ed27c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 130,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e16c7d9a1f4c54698cc0bdd9fb66c9518cb58e4e507347d21edac14f87ed2413",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8882484c-8d5e-7a69-b42d-6262f23eda72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strictMono_cast : StrictMono (Nat.cast : ℕ → α) :=
  mono_cast.strictMono_of_injective cast_injective
#align nat.strict_mono_cast Nat.strictMono_cast

/-- `Nat.cast : ℕ → α` as an `OrderEmbedding` -/
@[simps! (config := { fullyApplied := false })]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b753663473ba0993073a74d5dc805111a3ed27c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
