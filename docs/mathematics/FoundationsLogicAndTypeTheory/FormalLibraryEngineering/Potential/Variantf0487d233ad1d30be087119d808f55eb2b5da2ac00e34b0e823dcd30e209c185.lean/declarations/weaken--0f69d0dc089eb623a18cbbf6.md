# weaken

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4ddb931-bac7-f907-fa4b-4e58a01f6508",
  "kind": "theorem",
  "lexical_name": "weaken",
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
  "slug": "weaken--0f69d0dc089eb623a18cbbf6",
  "source": {
    "blob": "6e246bd47d94c6d78b410dcc2e7114cbe38d2424",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 211,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variantf0487d233ad1d30be087119d808f55eb2b5da2ac00e34b0e823dcd30e209c185.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f69d0dc089eb623a18cbbf6e35c53dd7b2c0f79d47d92948674c0a822cad440",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variantf0487d233ad1d30be087119d808f55eb2b5da2ac00e34b0e823dcd30e209c185.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4ddb931-bac7-f907-fa4b-4e58a01f6508`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weaken (hw : SystemWeaklyNormalizing P) {Γ : List (Expr S)}
    {T D : Expr S} {s t : S} (hT : HasType P Γ T (.sort s))
    (hD : HasType P Γ D (.sort t)) :
    Profile P (D :: Γ) (T.rename Nat.succ) = Profile P Γ T :=
  rename hw hT (.cons hD.valid hD) Nat.succ
    (fun _ _ hn => .weaken (HasType.lookup hD.valid hn) hD)
end Profile

/-- Every image which can replace a neutral head originates at the chosen
outer binder profile. Ordinary one-variable substitution, and every lifting
of it through additional binders, have this property. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variantf0487d233ad1d30be087119d808f55eb2b5da2ac00e34b0e823dcd30e209c185.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variantf0487d233ad1d30be087119d808f55eb2b5da2ac00e34b0e823dcd30e209c185.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e246bd47d94c6d78b410dcc2e7114cbe38d2424` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
