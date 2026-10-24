# shell_twist_respects_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "69ae518b07755721fb49482ad328f5565a16a6ff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/63ab1c327d255ce3e4013974f5ef032c42633397dbf4af23bd774cee98e6e5e0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1cd024ae-af3a-4a8e-814a-f1101b3ba708",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4613c6d7-6251-693f-ad89-b7e95dc30ea9",
  "kind": "theorem",
  "lexical_name": "shell_twist_respects_add",
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
  "slug": "shell-twist-respects-add--603da164367daea9cee39ea2",
  "source": {
    "blob": "69ae518b07755721fb49482ad328f5565a16a6ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 31,
    "path": "GRWTSK/Algebra/TorsionShellComparison/Variant63ab1c327d255ce3e4013974f5ef032c42633397dbf4af23bd774cee98e6e5e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:603da164367daea9cee39ea26994a4f904d01ae5835304b145740197695c1add",
  "verification": {
    "reference": "docs/verification/Algebra/TorsionShellComparison/Variant63ab1c327d255ce3e4013974f5ef032c42633397dbf4af23bd774cee98e6e5e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4613c6d7-6251-693f-ad89-b7e95dc30ea9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shell_twist_respects_add
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {s : Carrier.GridShape}
    (R : Folder.Research.TorsionShellComparison.EllipticToShellTorsion G s)
    (P Q : Arithmetic.ECPoint E) :
    R.map (G.add P Q) =
      Folder.Expansion.ShellTorsion.comp (R.map P) (R.map Q) :=
  Folder.Research.TorsionShellComparison.shell_twist_respects_add R P Q

end TorsionShellComparison
end Research
end Theorem
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TorsionShellComparison/Variant63ab1c327d255ce3e4013974f5ef032c42633397dbf4af23bd774cee98e6e5e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TorsionShellComparison/Variant63ab1c327d255ce3e4013974f5ef032c42633397dbf4af23bd774cee98e6e5e0.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69ae518b07755721fb49482ad328f5565a16a6ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
