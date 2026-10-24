# IO.Error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b6bc4dfc66b517e82f02663561e452e82b8ea609de6dafb4264c402170a9b0b",
  "kind": "inductive",
  "lexical_name": "IO.Error",
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
  "slug": "io-error--efdfce4448e4da3c7d0661d1",
  "source": {
    "blob": "ef33f8b03204d703746689500152544fd7ef3435",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 32,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variant639e429d1d43a69b86978a84b0fbb4c3877df203e4483a3fd1c6581f4608dd8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:efdfce4448e4da3c7d0661d1a3ba2acb6674f8ab7a88adc509aaea9a99c156cc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variant639e429d1d43a69b86978a84b0fbb4c3877df203e4483a3fd1c6581f4608dd8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b6bc4dfc66b517e82f02663561e452e82b8ea609de6dafb4264c402170a9b0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive IO.Error where
  /--
  The operation failed because a file already exists.

  This corresponds to POSIX errors `EEXIST`, `EINPROGRESS`, and `EISCONN`.
  -/
  | alreadyExists (filename : Option String) (osCode : UInt32) (details : String)
  /--
  Some error not covered by the other constructors of `IO.Error` occurred.

  This also includes POSIX error `EFAULT`.
  -/
  | otherError (osCode : UInt32) (details : String)
  /--
  A necessary resource was busy.

  This corresponds to POSIX errors `EADDRINUSE`, `EBUSY`, `EDEADLK`, and `ETXTBSY`.
  -/
  | resourceBusy (osCode : UInt32) (details : String)
  /--
  A necessary resource is no longer available.

  This corresponds to POSIX errors `ECONNRESET`, `EIDRM`, `ENETDOWN`, `ENETRESET`, `ENOLINK`, and
  `EPIPE`.
  -/
  | resourceVanished (osCode : UInt32) (details : String)
  /--
  An operation was not supported.

  This corresponds to POSIX errors `EADDRNOTAVAIL`, `EAFNOSUPPORT`, `ENODEV`, `ENOPROTOOPT`
  `ENOSYS`, `EOPNOTSUPP`, `ERANGE`, `ESPIPE`, and `EXDEV`.
  -/
  | unsupportedOperation (osCode : UInt32) (details : String)
  /--
  The operation failed due to a hardware problem, such as an I/O error.

  This corresponds to the POSIX error `EIO`.
  -/
  | hardwareFault (osCode : UInt32) (details : String)
  /--
  A constraint required by an operation was not satisfied (e.g. a directory was not empty).

  This corresponds to the POSIX error `ENOTEMPTY`.
  -/
  | unsatisfiedConstraints (osCode : UInt32) (details : String)
  /--
  An inappropriate I/O control operation was attempted.

  This corresponds to the POSIX error `ENOTTY`.
  -/
  | illegalOperation (osCode : UInt32) (details : String)
  /--
  A protocol error occurred.

  This corresponds to the POSIX errors `EPROTO`, `EPROTONOSUPPORT`, and `EPROTOTYPE`.
  -/
  | protocolError (osCode : UInt32) (details : String)
  /--
  An operation timed out.

  This corresponds to the POSIX errors `ETIME`, and `ETIMEDOUT`.
  -/
  | timeExpired (osCode : UInt32) (details : String)
  /--
  The operation was interrupted.

  This corresponds to the POSIX error `EINTR`.
  -/
  | interrupted (filename : String) (osCode : UInt32) (details : String)
  /--
  No such file or directory.

  This corresponds to the POSIX error `ENOENT`.
  -/
  | noFileOrDirectory (filename : String) (osCode : UInt32) (details : String)
  /--
  An argument to an I/O operation was invalid.

  This corresponds to the POSIX errors `ELOOP`, `ENAMETOOLONG`, `EDESTADDRREQ`, `EILSEQ`, `EINVAL`, `EDOM`, `EBADF`
  `ENOEXEC`, `ENOSTR`, `ENOTCONN`, and `ENOTSOCK`.
  -/
  | invalidArgument (filename : Option String) (osCode : UInt32) (details : String)

  /--
  An operation failed due to insufficient permissions.

  This corresponds to the POSIX errors `EACCES`, `EROFS`, `ECONNABORTED`, `EFBIG`, and `EPERM`.
  -/
  | permissionDenied (filename : Option String) (osCode : UInt32) (details : String)

  /--
  A resource was exhausted.

  This corresponds to the POSIX errors  `EMFILE`, `ENFILE`, `ENOSPC`, `E2BIG`, `EAGAIN`, `EMLINK`,
  `EMSGSIZE`, `ENOBUFS`, `ENOLCK`, `ENOMEM`, and `ENOSR`.
  -/
  | resourceExhausted (filename : Option String) (osCode : UInt32) (details : String)

  /--
  An argument was the wrong type (e.g. a directory when a file was required).

  This corresponds to the POSIX errors `EISDIR`, `EBADMSG`, and `ENOTDIR`.
  -/
  | inappropriateType (filename : Option String) (osCode : UInt32) (details : String)

  /--
  A required resource does not exist.

  This corresponds to the POSIX errors `ENXIO`, `EHOSTUNREACH`, `ENETUNREACH`, `ECHILD`,
  `ECONNREFUSED`, `ENODATA`, `ENOMSG`, and `ESRCH`.
  -/
  | noSuchThing (filename : Option String) (osCode : UInt32) (details : String)

  /-- An unexpected end-of-file marker was encountered. -/
  | unexpectedEof
  /-- Some other error occurred. -/
  | userError (msg : String)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variant639e429d1d43a69b86978a84b0fbb4c3877df203e4483a3fd1c6581f4608dd8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variant639e429d1d43a69b86978a84b0fbb4c3877df203e4483a3fd1c6581f4608dd8b.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef33f8b03204d703746689500152544fd7ef3435` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
