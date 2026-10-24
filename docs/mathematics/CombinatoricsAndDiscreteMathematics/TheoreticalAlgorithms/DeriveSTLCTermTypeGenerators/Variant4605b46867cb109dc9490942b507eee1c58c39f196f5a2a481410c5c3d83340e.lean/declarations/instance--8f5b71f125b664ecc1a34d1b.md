# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f4aec5f498959ebdbf01cf1a62058c376321538864d215f40e87ad7f5ae1906",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--8f5b71f125b664ecc1a34d1b",
  "source": {
    "blob": "98cecb5804e9be1c674e4ea88b28c303c696548d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 156,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveSTLCTermTypeGenerators/Variant4605b46867cb109dc9490942b507eee1c58c39f196f5a2a481410c5c3d83340e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8f5b71f125b664ecc1a34d1b3f92f33ed6e0496b68ff096bbd7fc4d76dd164c5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveSTLCTermTypeGenerators/Variant4605b46867cb109dc9490942b507eee1c58c39f196f5a2a481410c5c3d83340e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f4aec5f498959ebdbf01cf1a62058c376321538864d215f40e87ad7f5ae1906`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Shrinkable term where
  shrink := shrinkTerm
    where
      shrinkTerm (tm : term) : List term :=
        match tm with
        | .Const _ | .Var _ => []
        | .App e1 e2 | .Add e1 e2 => shrinkTerm e1 ++ shrinkTerm e2
        | .Abs _ e => shrinkTerm e

/-- error: Found a counter-example! -/
#guard_msgs in
#eval Testable.check (∀ (term : term), isValue term)
  (cfg := {numInst := 10, maxSize := 5, quiet := true})

/-- error: Found a counter-example! -/
#guard_msgs in
#eval Testable.check (∀ (ty : type), isFunctionType ty)
  (cfg := {numInst := 10, maxSize := 5, quiet := true})
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveSTLCTermTypeGenerators/Variant4605b46867cb109dc9490942b507eee1c58c39f196f5a2a481410c5c3d83340e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveSTLCTermTypeGenerators/Variant4605b46867cb109dc9490942b507eee1c58c39f196f5a2a481410c5c3d83340e.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98cecb5804e9be1c674e4ea88b28c303c696548d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
