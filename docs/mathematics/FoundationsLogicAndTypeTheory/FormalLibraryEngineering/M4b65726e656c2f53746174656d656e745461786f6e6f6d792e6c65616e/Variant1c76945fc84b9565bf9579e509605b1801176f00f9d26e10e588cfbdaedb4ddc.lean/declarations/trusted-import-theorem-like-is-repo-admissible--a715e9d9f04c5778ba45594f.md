# trusted_import_theorem_like_is_repo_admissible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12f28b0f-284a-9d9c-8c04-add94479084e",
  "kind": "theorem",
  "lexical_name": "trusted_import_theorem_like_is_repo_admissible",
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
  "slug": "trusted-import-theorem-like-is-repo-admissible--a715e9d9f04c5778ba45594f",
  "source": {
    "blob": "8f34360fa75dd088ce88005c6243e8b3a1e25dab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 305,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f53746174656d656e745461786f6e6f6d792e6c65616e/Variant1c76945fc84b9565bf9579e509605b1801176f00f9d26e10e588cfbdaedb4ddc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a715e9d9f04c5778ba45594f88486b43a3d68aded6a7b8ba68e9d58dc9412062",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f53746174656d656e745461786f6e6f6d792e6c65616e/Variant1c76945fc84b9565bf9579e509605b1801176f00f9d26e10e588cfbdaedb4ddc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12f28b0f-284a-9d9c-8c04-add94479084e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trusted_import_theorem_like_is_repo_admissible
    (S : FormalStatementSurface)
    (hk : S.kind.isTheoremLike = true)
    (ha : S.authority = AuthorityState.trustedImport) :
    RepoAdmissibleStatement S := by
  unfold RepoAdmissibleStatement
  rw [hk]
  exact Or.inl (trusted_import_gives_theorem_authority S ha)

/-- Any theorem-like open residue is repo-admissible as residue, not as proof. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f53746174656d656e745461786f6e6f6d792e6c65616e/Variant1c76945fc84b9565bf9579e509605b1801176f00f9d26e10e588cfbdaedb4ddc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f53746174656d656e745461786f6e6f6d792e6c65616e/Variant1c76945fc84b9565bf9579e509605b1801176f00f9d26e10e588cfbdaedb4ddc.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f34360fa75dd088ce88005c6243e8b3a1e25dab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
