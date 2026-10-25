# run_bind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79ebe543-74cb-36c8-78a9-f962369b9069",
  "kind": "theorem",
  "lexical_name": "run_bind",
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
  "slug": "run-bind--cd9abee34e6d6e12335d5e18",
  "source": {
    "blob": "9e19222af613ef51d623a6b4f52618034e91190d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 113,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variantf728f24bb4f89337f146bdecc738c79eb3ea93b88fe7a4f7c46e20166053810f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd9abee34e6d6e12335d5e18e33bccb58f0f5642a3cdb0254f477673bccf912a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variantf728f24bb4f89337f146bdecc738c79eb3ea93b88fe7a4f7c46e20166053810f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79ebe543-74cb-36c8-78a9-f962369b9069`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem run_bind (empty : ω) (append : ω → ω → ω)
    (cmd : WriterT ω M α) (f : α → WriterT ω M β) :
    letI : Monad (WriterT ω M) := monad empty append
    (cmd >>= f).run = cmd.run >>= fun (a, w₁) ↦
      (fun (b, w₂) ↦ (b, append w₁ w₂)) <$> (f a).run :=
  rfl

/-- Lift an `M` to a `WriterT ω M`, using the given `empty` as the monoid unit. -/
@[inline, instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variantf728f24bb4f89337f146bdecc738c79eb3ea93b88fe7a4f7c46e20166053810f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variantf728f24bb4f89337f146bdecc738c79eb3ea93b88fe7a4f7c46e20166053810f.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e19222af613ef51d623a6b4f52618034e91190d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
