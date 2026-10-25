# WeaklyLawfulMonadAttach.bind_attach_of_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8849ff8-db41-fd6c-3c9a-065393029af9",
  "kind": "theorem",
  "lexical_name": "WeaklyLawfulMonadAttach.bind_attach_of_nonempty",
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
  "slug": "weaklylawfulmonadattach-bind-attach-of-nonempty--44849331d7fff1690d375371",
  "source": {
    "blob": "4d6f253c31747a926e162a002d813f99d1de7883",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 66,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdac56cdb5a3e363512a3d0d99f8c2f12e6145ff80007317fdbe5f1bf988cad7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44849331d7fff1690d3753710bf91f433b41f9924099f72523d33407cbf04856",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdac56cdb5a3e363512a3d0d99f8c2f12e6145ff80007317fdbe5f1bf988cad7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8849ff8-db41-fd6c-3c9a-065393029af9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem WeaklyLawfulMonadAttach.bind_attach_of_nonempty
    [Monad m] [MonadAttach m] [LawfulMonad m] [WeaklyLawfulMonadAttach m] [Nonempty (m β)]
    {x : m α} {f : Subtype (MonadAttach.CanReturn x) → m β} :
    open scoped Classical in
    MonadAttach.attach x >>= f = x >>= (fun a => if ha : MonadAttach.CanReturn x a then f ⟨a, ha⟩ else Classical.ofNonempty) := by
  conv => rhs; simp +singlePass only [← map_attach (x := x)]
  simp [Subtype.property]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdac56cdb5a3e363512a3d0d99f8c2f12e6145ff80007317fdbe5f1bf988cad7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdac56cdb5a3e363512a3d0d99f8c2f12e6145ff80007317fdbe5f1bf988cad7e.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d6f253c31747a926e162a002d813f99d1de7883` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
