import Formal.Archive

/-!
Archive surface marker.

This root surfaces archive metadata only. Archive files are never imported into
the checked kernel.
-/

namespace Formal.Surface.Archive

def importsArchiveCorpus : Bool := false

theorem archive_corpus_not_imported : importsArchiveCorpus = false := by
  rfl

end Formal.Surface.Archive
