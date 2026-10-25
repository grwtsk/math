# Result.toRawEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:747900666a53d977bb336ea312ade9d96d37ca7f758bb36e8b9e7748a31e1f37",
  "kind": "def",
  "lexical_name": "Result.toRawEq",
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
  "slug": "result-toraweq--4c9b26837bf00ab924540ebd",
  "source": {
    "blob": "ea504545bdab3fe86cd2be060e62a98cf8977398",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 405,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Varianta30bc6157f516f34334f272fa69b93e3ca46d663fda392c5d22a8b5ffe6ebf41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c9b26837bf00ab924540ebd1aaaa96a57985f1813e397a075f415d9f4193dcb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Varianta30bc6157f516f34334f272fa69b93e3ca46d663fda392c5d22a8b5ffe6ebf41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:747900666a53d977bb336ea312ade9d96d37ca7f758bb36e8b9e7748a31e1f37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Result.toRawEq {α : Q(Type u)} {e : Q($α)} : Result e → (e' : Q($α)) × Q($e = $e')
  | .isBool false p =>
    have e : Q(Prop) := e; have p : Q(¬$e) := p
    ⟨(q(False) : Expr), (q(eq_false $p) : Expr)⟩
  | .isBool true p =>
    have e : Q(Prop) := e; have p : Q($e) := p
    ⟨(q(True) : Expr), (q(eq_true $p) : Expr)⟩
  | .isNat _ lit p => ⟨q(Nat.rawCast $lit), q(IsNat.to_raw_eq $p)⟩
  | .isNegNat _ lit p => ⟨q(Int.rawCast (.negOfNat $lit)), q(IsInt.to_raw_eq $p)⟩
  | .isRat _ _ n d p => ⟨q(Rat.rawCast $n $d), q(IsRat.to_raw_eq $p)⟩

/--
`Result.toRawEq` but providing an integer. Given a `NormNum.Result e` for something known to be an
integer (which uses `IsNat` or `IsInt` to express equality to an integer numeral), converts it to
an equality `e = Nat.rawCast n` or `e = Int.rawCast n` to a raw cast expression, so it can be used
for rewriting. Gives `none` if not an integer.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Varianta30bc6157f516f34334f272fa69b93e3ca46d663fda392c5d22a8b5ffe6ebf41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Varianta30bc6157f516f34334f272fa69b93e3ca46d663fda392c5d22a8b5ffe6ebf41.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea504545bdab3fe86cd2be060e62a98cf8977398` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
