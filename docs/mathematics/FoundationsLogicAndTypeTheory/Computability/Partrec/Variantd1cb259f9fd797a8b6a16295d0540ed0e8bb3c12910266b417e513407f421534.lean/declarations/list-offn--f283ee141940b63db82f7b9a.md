# list_ofFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63658708-6f6b-e54a-972b-aa5341a9e430",
  "kind": "theorem",
  "lexical_name": "list_ofFn",
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
  "slug": "list-offn--f283ee141940b63db82f7b9a",
  "source": {
    "blob": "88129181fdf2bdc1cf1c5bb461f5050b04b742ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 757,
    "line": 749,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variantd1cb259f9fd797a8b6a16295d0540ed0e8bb3c12910266b417e513407f421534.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f283ee141940b63db82f7b9af60c3b5901ca41db94640724b900f523eef38935",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Partrec/Variantd1cb259f9fd797a8b6a16295d0540ed0e8bb3c12910266b417e513407f421534.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63658708-6f6b-e54a-972b-aa5341a9e430`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 749–757.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem list_ofFn :
    ∀ {n} {f : Fin n → α → σ},
      (∀ i, Computable (f i)) → Computable fun a => List.ofFn fun i => f i a
  | 0, _, _ => const []
  | n + 1, f, hf => by
    simp [List.ofFn_succ]
    exact list_cons.comp (hf 0) (list_ofFn fun i => hf i.succ)
#align computable.list_of_fn Computable.list_ofFn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Partrec/Variantd1cb259f9fd797a8b6a16295d0540ed0e8bb3c12910266b417e513407f421534.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variantd1cb259f9fd797a8b6a16295d0540ed0e8bb3c12910266b417e513407f421534.lean#L749).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88129181fdf2bdc1cf1c5bb461f5050b04b742ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
